class Project < ActiveRecord::Base
  has_many :tasks, inverse_of: :project, dependent: :delete_all, :order => 'priority_id DESC'
  validates :name, presence: true
  validates :name, uniqueness: true
end
