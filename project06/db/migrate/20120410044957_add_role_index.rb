class AddRoleIndex < ActiveRecord::Migration
  def change
  	  add_index "roles", ["name"], :name => "index_roles_on_name", :unique => true
  end
end
