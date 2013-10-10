class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description, :null => false
      t.boolean :finalized, :default => false
      t.integer :project_id, :null => false

      t.timestamps
    end

    add_index :tasks, [:description, :project_id], unique: true
    add_foreign_key(:tasks, :projects)
  end
end
