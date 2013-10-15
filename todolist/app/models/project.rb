class Project < ActiveRecord::Base
  has_many :tasks
  attr_accessible :name, :tasks_attributes, :completed

  validates :name, :presence => true

  accepts_nested_attributes_for :tasks, :allow_destroy => true, :reject_if => :all_blank

  def validate_completed
    self.completed = true
    self.tasks.each { |task| self.completed &&= task.completed }
  end

  before_save :validate_completed
end
