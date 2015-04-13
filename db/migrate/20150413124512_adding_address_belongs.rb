class AddingAddressBelongs < ActiveRecord::Migration
  def change
    add_reference :addresses, :user, index: true
    add_foreign_key :addresses, :user
    add_reference :addresses, :facility, index: true
    add_foreign_key :addresses, :facility
  end
end
