class Project < ActiveRecord::Base
  has_many :tasks
  attr_accessible :name, :tasks_attributes

  validates :name, :presence => true

  accepts_nested_attributes_for :tasks, :allow_destroy => true, :reject_if => :all_blank
end
