class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :authorname
      t.string :image_url
      t.string :image_type

      t.timestamps
    end
  end
end
