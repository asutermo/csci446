class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :name
      t.text :body
      t.datetime :createdate

      t.timestamps
    end
  end
end
