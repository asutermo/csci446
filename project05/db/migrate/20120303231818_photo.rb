class Photo < ActiveRecord::Migration
  def change
  	remove_column :articles, :auth_id
  	remove_column :authors, :image_type
  	remove_column :authors, :image_url
  	add_column :authors, :photo_file_name, :string
  	add_column :authors, :photo_content_type, :string
  	add_column :authors, :photo_file_size, :integer
  end
  def up
  	add_column :authors, :photo_file_name, :string
  	add_column :authors, :photo_content_type, :string
  	add_column :authors, :photo_file_size, :integer
  end

  def down
  	remove_column :authors, :photo_file_name
  	remove_column :authors, :photo_file_size
  	remove_column :authors, :photo_content_type
  end
end
