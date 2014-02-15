class Project < ActiveRecord::Base
	has_many :tasks, :inverse_of => :project, :dependent => :delete_all

	validates :name, presence: true
	validates :name, length: { maximum: 255 }

	accepts_nested_attributes_for :tasks
end
