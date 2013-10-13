class Project < ActiveRecord::Base
  validates_presence_of :name, message: I18n.t("errors.messages.empty")

  has_many :tasks

  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: proc { |attributes| attributes['description'].blank? }

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
