# == Schema Information
#
# Table name: archives
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  title      :string(255)
#  body       :text
#  publish_at :datetime
#  created_at :datetime
#  updated_at :datetime
#  slug       :string(255)
#

class Archive < ActiveRecord::Base
  extend FriendlyId


  friendly_id :name, :use => :slugged


  rails_admin do

    configure :name, :string
    configure :title, :string
    configure :body, :text
    configure :publish_at, :datetime
    configure :slug, :string

    # Cross-section configuration:
    object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
    label 'Archive'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Archives'      # Same, plural
    weight 0                      # Navigation priority. Bigger is higher.
  # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

    # Section specific configuration:

    list do
      #filters [:id, :slug, :name, :publish_at]  # Array of field names which filters should be shown by default in the table header
      # items_per_page 100    # Override default_items_per_page
      # sort_by :id           # Sort column (default is primary key)
      # sort_reverse true     # Sort direction (default is true for primary key, last created first)
    end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end
  end
end
