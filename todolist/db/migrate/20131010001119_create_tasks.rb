class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :project, :null => false
      t.string :title, :limit => 100

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
