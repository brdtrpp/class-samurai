class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :address

      t.timestamps null: false
    end
  end
end
