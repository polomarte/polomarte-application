class Project < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :status
  validates_inclusion_of :status, in: %w(inProgress finished)

  has_many :tasks, :dependent => :destroy

  accepts_nested_attributes_for :tasks, allow_destroy: true
end