class AddDetailsToFacility < ActiveRecord::Migration
  def change
    add_column :facilities, :name, :string, limit: 45
    add_column :facilities, :address2, :string
    add_column :facilities, :city, :string
    add_column :facilities, :state, :string
    add_column :facilities, :zip_code, :decimal, precision: 5
    add_column :facilities, :phone, :string
    add_column :facilities, :description, :text
    add_index :facilities, :name
    add_index :facilities, :city
    add_index :facilities, :state
    add_index :facilities, :zip_code
  end
end
