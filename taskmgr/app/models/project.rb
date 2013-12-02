class Project < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :status
  validates_inclusion_of :status, in: %w(inProgress finished)

  has_many :tasks
end
