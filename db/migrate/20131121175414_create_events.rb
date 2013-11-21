class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :happening
      t.text :description
      t.string :guest
      t.text :guest_url

      t.timestamps
    end
  end
end
