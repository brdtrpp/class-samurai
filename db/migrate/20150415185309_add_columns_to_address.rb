class AddColumnsToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :facility_id, :integer
    add_column :addresses, :user_id, :integer
  end
end
