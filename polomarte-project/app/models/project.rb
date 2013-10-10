class Project < ActiveRecord::Base
  validates_presence_of :name, message: I18n.t("errors.messages.empty")

  has_many :tasks
end
