class Task < ActiveRecord::Base
  belongs_to :project
  validates :name, length: {maximum: 100}
end
