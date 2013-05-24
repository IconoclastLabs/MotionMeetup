class AddAssetToArchives < ActiveRecord::Migration
  def self.up
    add_attachment :archives, :assets
  end

  def self.down
    remove_attachment :archives, :assets
  end
end