# == Schema Information
#
# Table name: archives
#
#  id                 :integer          primary key
#  name               :string(255)
#  title              :string(255)
#  body               :text
#  publish_at         :timestamp
#  created_at         :timestamp
#  updated_at         :timestamp
#  slug               :string(255)
#  asset_file_name    :string(255)
#  asset_content_type :string(255)
#  asset_file_size    :integer
#  asset_updated_at   :timestamp
#

class Archive < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged
  attr_accessor :asset, :assets_file_name, :assets_content_type, :assets_file_size, :assets_updated_at

  has_attached_file :asset, :styles => {:thumb => "120x120", :small => "240x240", :large => "640x480"},
    :url => '/uploads/:rails_env/:class/:attachment/:id/:style/:basename.:extension',
    :path => ":rails_root/public/uploads/:rails_env/:class/:attachment/:id/:style/:basename.:extension"
  # add a delete_<asset_name> method:
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }
  #after_commit { binding.pry }
  def delete_asset
    return 0
  end
  scope :published, -> { where('publish_at < ?', Time.now.to_date).order('publish_at DESC') }
  scope :unpublished, -> { where('publish_at >= ?', Time.now.to_date).order('publish_at ASC') }

  rails_admin do

    configure :name, :string
    configure :title, :string
    configure :body, :text
    configure :publish_at, :datetime
    configure :slug, :string
    configure :asset, :paperclip
    # Cross-section configuration:
    object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
    label 'Archive'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Archives'      # Same, plural
    weight 0                      # Navigation priority. Bigger is higher.
  # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

    # Section specific configuration:

    list do
      field :name do
        label "Event"
      end
      #filters [:id, :slug, :name, :publish_at]  # Array of field names which filters should be shown by default in the table header
      # items_per_page 100    # Override default_items_per_page
      # sort_by :id           # Sort column (default is primary key)
      # sort_reverse true     # Sort direction (default is true for primary key, last created first)
    end
    edit do
      group :required  do
        label "Required Fields"

        field :name do
          label "Name"
          help "Name is internally used for admins and for url page slug generation. Users will not explicitly see it."

        end
        field :title do
          label "Title"
          help "Archive Title shown in various headings."
        end
        field :asset do
           label "Graphical Asset"
           help "Optional, but recommended."
        end
        field :body do
          label "Page Body (Markdown)"
          help "HTML can be mixed into the markdown content."
        end
      end
      group :optional do
        label "Optional Fields"
        active false
        field :publish_at do
          label "Publish at"
          help "When 'Publish at' is not nil, the archive will be accessible to the public. Dates in the future will be considered scheduled meetups."
        end
        field :slug do
          label "Custom Slug"
          help "This will be automatically generated from the Name field, but can be overridden as long as it's unique."
        end
      end
    end
    show do
      field :asset do
        label "Graphical Asset"
      end
      field :name do
        label "Name"
      end
      field :title do
        label "Title"

      end
      field :body do
        label "Page Body (Markdown)"

      end
      field :slug do
        label "Custom Slug"
      end
      field :publish_at do
        label "Publish at"
      end
    end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end
  end
end
