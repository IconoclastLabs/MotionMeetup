class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :default => ""
      t.string :email, :null => false
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
