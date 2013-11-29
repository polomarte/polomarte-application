class Task < ActiveRecord::Base

  belongs_to :project
  belongs_to :priority

  validates :name, length: {maximum: 100}
  validates :content, length: {maximum: 999}
  validates :name,:content,:project_id,:priority_id, presence: true

end
