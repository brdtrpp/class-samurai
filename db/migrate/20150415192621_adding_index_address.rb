class AddingIndexAddress < ActiveRecord::Migration
  def change
    add_index :addresses, :facility_id
    add_index :addresses, :user_id
  end
end
