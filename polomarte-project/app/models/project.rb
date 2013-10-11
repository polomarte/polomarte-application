class Project < ActiveRecord::Base
  validates_presence_of :name, message: I18n.t("errors.messages.empty")

  has_many :tasks

  def finalized?
    !self.tasks.empty? && !self.tasks.any? { |task| task.finalized == false }
  end
end
