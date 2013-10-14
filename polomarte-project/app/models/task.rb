class Task < ActiveRecord::Base

  validates_presence_of :description, message: I18n.t("errors.messages.empty")
  validates_presence_of :project_id, message: I18n.t("errors.messages.empty")
  validates_associated :project, message: I18n.t("errors.messages.empty")

  belongs_to :project
end
