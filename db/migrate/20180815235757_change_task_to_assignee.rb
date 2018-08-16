class ChangeTaskToAssignee < ActiveRecord::Migration[5.2]
  def change
    rename_collumn :tasks, :tasker, :assignee
  end
end
