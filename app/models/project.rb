class Project < ActiveRecord::Base
  has_many :tasks, inverse_of: :project, dependent: :delete_all
end
