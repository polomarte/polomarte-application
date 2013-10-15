module ApplicationHelper

  def errors(model)
    render partial: "layouts/errors",
           locals: {model: model}
  end

  def notices
    render partial: "layouts/notice"
  end

  def tasks_modal(projects)
    render partial: "projects/task_modal",
           locals: {projects: projects}
  end
end
