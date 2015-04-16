class AddFKeytoAddress < ActiveRecord::Migration
  def change
    remove_column :addresses, :users_id
    remove_column :addresses, :facilities_id
  end
end
