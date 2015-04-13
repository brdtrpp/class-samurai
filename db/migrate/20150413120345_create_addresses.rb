class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state, maximum: 2
      t.integer :zip_code, minimum: 5, maximum: 5
      t.string :phone

      t.timestamps null: false
    end
  end
end
