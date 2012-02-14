class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :body
      t.datetime :create_date
      t.integer :edit_count

      t.timestamps
    end
  end
end
