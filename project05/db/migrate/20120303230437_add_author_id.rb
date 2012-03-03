class AddAuthorId < ActiveRecord::Migration
  def up
  	add_column :articles, :author_id, :integer
  end

  def down
  end
end
