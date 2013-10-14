class Task < ActiveRecord::Base
  belongs_to :project
  attr_accessible :title, :completed

  validates :title, :presence => true
end
