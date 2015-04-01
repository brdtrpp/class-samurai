class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.text :address
      t.text :type
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :facilities, :users
  end
end
