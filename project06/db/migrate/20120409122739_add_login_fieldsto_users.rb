class AddLoginFieldstoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :login_last, :datetime
  	add_column :users, :login_current, :datetime
  end
end

