class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :language
      t.integer :rating
      t.string :contributor
      t.string :picture
      t.date :publication_date
      t.string :ISBN
      t.text :content

      t.timestamps
    end
  end
end
