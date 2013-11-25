class Task < ActiveRecord::Base

  belongs_to :project
  validates :name, length: {maximum: 100}
  validates :content, length: {maximum: 999}
  validates :name,:content,:project_id, presence: true

end
