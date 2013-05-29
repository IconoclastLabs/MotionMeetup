class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :name
      t.string :title
      t.text :body
      t.timestamp :publish_at

      t.timestamps
    end
  end
end
