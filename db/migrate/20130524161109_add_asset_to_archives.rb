class AddAssetToArchives < ActiveRecord::Migration
  def self.up
    add_attachment :archives, :asset
  end

  def self.down
    remove_attachment :archives, :asset
  end
end