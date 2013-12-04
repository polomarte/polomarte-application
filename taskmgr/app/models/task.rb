class Task < ActiveRecord::Base
  validates_presence_of :name
  validates :finished, inclusion:{ in: [false,true]}

  belongs_to :project

  after_save :set_project_status


  def set_project_status
  	Task.where(project_id: self.project_id).map.detect {|t| t.finished == false } ?  self.project.update_attribute(:status, "inProgress") : self.project.update_attribute(:status, "finished")
  end
end
