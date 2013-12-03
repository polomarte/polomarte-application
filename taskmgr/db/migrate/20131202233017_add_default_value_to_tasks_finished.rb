class AddDefaultValueToTasksFinished < ActiveRecord::Migration
  def change
    change_column :tasks, :finished, :boolean, :default => false  	
  end
end
