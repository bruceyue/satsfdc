class AddColumnToTraining < ActiveRecord::Migration
  def change
  	add_column :trainings, :t_date, :date
  	add_column :trainings, :price, :string
  end
end
