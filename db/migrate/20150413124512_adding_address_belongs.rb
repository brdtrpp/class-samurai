class AddingAddressBelongs < ActiveRecord::Migration
  def change
    add_reference :addresses, :user, index: true
    add_foreign_key :addresses, :user_id
    add_reference :addresses, :facility, index: true
    add_foreign_key :addresses, :facility_id
  end
end
