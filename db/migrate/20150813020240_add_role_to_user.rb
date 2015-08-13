class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, null: 'member', default: 'member'
  end
end
