class AddColumnsToRoles < ActiveRecord::Migration
  def change
  	add_column :roles, :descript, :string
  	add_column :roles, :name, :string
  	add_column :roles, :users_count, :integer
  end
end
