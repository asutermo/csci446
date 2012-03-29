class FixPasswordColumn < ActiveRecord::Migration
  def change
  	remove_column :users, :password
  	remove_column :users, :salt
  	add_column :users, :crypted_password, :string
  	add_column :users, :password_salt, :string
  end
end
