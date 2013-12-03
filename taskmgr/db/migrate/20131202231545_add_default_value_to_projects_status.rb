class AddDefaultValueToProjectsStatus < ActiveRecord::Migration
  def change
  	change_column :projects, :status, :string, :default => "inProgress"
  end
end
