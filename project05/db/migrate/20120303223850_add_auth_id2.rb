class AddAuthId2 < ActiveRecord::Migration
  def up
  	add_column :articles, :auth_id, :integer
  end

  def down
  end
end
