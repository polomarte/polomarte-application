class Project < ActiveRecord::Base
	has_many :tasks, :inverse_of => :project, :dependent => :delete_all

	validates :nome, presence: true
	validates :nome, length: { maximum: 255 }

	accepts_nested_attributes_for :tasks
end
