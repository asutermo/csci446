class Photo3 < ActiveRecord::Migration
  def self.up
    add_column :authors, :photo_file_name, :string
    add_column :authors, :photo_content_type, :string 
    add_column :authors, :photo_file_size, :integer
  end

  def self.down
    remove_column :authors, :photo_file_name
    remove_column :authors, :photo_content_type
    remove_column :authors, :photo_file_size
  end
end
