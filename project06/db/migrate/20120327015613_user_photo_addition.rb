class UserPhotoAddition < ActiveRecord::Migration
  def up
  	add_column :users, :photo_file_name, :string
  	add_column :users, :photo_file_size, :integer
  	add_column :users, :photo_content_type, :string
  end

  def down
  	remove_column :users, :photo_file_name
  	remove_column :users, :photo_file_size
  	remove_column :users, :photo_content_type
  end
end
