class CreateSfjobs < ActiveRecord::Migration
  def change
    create_table :sfjobs do |t|
      t.string :name
      t.decimal :price
      t.date :published_date
      t.text :description
      t.string :company

      t.timestamps
    end
  end
end
