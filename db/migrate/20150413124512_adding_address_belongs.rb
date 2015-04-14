class AddingAddressBelongs < ActiveRecord::Migration
  def change
    
    create_join_table :users, :addresses do |t|
      t.index [:address_id, :user_id]
    end
    
    create_join_table :facilities, :addresses do |t|
      t.index [:address_id, :facility_id]
    end
    
    add_reference :addresses, :users, index: true

    add_reference :addresses, :facilities, index: true

  end
end
