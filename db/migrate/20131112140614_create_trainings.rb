class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :name
      t.text :description
      t.string :t_type

      t.timestamps
    end
  end
end
