class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.boolean :completed, default: false
      t.references :project, index: true

      t.timestamps
    end
    add_foreign_key :tasks, :projects
  end
end
