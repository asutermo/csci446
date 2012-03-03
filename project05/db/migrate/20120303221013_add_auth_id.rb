class AddAuthId < ActiveRecord::Migration
  def up
  	remove_column :articles, :author
  end

  def down
  	add_column :articles, :auth_id, :integer
  end
end
