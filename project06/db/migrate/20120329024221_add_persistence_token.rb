class AddPersistenceToken < ActiveRecord::Migration
  def change
  	add_column :users, :salt, :string
  	add_column :users, :persistence_token, :string
  end
end
