class AddSlugToArchives < ActiveRecord::Migration
  def change
    add_column :archives, :slug, :string
    add_index :archives, :slug
  end
end
