class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name, message: I18n.t("errors.messages.empty")

  has_many :tasks, :dependent => :destroy

  def incomplete_tasks
    tasks.where(finalized: false)
  end

  def complete_tasks
    tasks.where(finalized: true)
  end

  def finalized?
    !self.tasks.empty? && !self.tasks.any? { |task| task.finalized == false }
  end


  def status
    if finalized?
      I18n.t(:finalized, scope: [:activerecord, :attributes, :project])
    else
      I18n.t(:open, scope: [:activerecord, :attributes, :project])
    end
  end

end
