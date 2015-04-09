class FacilityUser < ActiveRecord::Migration
  def change
    create_table :facilities_users, :id => false do |t|
      t.references :user
      t.references :facility
      
      t.timestamps
    end
  end
end
