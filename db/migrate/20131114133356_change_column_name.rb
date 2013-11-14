class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :trainings, :type, :t_type
  end
end
