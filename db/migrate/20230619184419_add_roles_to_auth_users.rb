class AddRolesToAuthUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :auth_users, :roles, :integer, default: 0
   
  end
end
