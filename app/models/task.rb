class Task < ActiveRecord::Base
  belongs_to :project, :inverse_of => :tasks

  validates :name, :project_id, presence: true
  validates :name, length: { maximum: 255 }
  validates :description, length: { maximum: 1000 }

end
