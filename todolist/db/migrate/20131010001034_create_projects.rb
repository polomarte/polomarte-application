class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, :limit => 100

      t.timestamps
    end
  end
end
