class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :nome

      t.timestamps
    end
  end
end
