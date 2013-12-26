class AddUniquenessRestrictionToTasksInTheSameProject < ActiveRecord::Migration
  def change
    execute "ALTER TABLE tasks ADD CONSTRAINT unique_task_name_within_a_project UNIQUE (name,project_id);"

    #esse de baixo não dá dando certo por alguma razão.
    #add_index :tasks, [:name,:project_id ] , :unique => true
  end
end
