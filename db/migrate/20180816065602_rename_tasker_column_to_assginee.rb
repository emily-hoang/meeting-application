class RenameTaskerColumnToAssginee < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tasks, :tasker, :assignee
  end
end
