class Task < ActiveRecord::Base
  belongs_to :project, :inverse_of => :tasks

  validates :description, :project_id, presence: true
  validates :description, length: { maximum: 255 }

end
