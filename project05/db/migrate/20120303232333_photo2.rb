class Photo2 < ActiveRecord::Migration
  def change
  	def change
  	add_column :authors, :photo_file_name, :string
  	add_column :authors, :photo_content_type, :string
  	add_column :authors, :photo_file_size, :integer
  end
  end
end
