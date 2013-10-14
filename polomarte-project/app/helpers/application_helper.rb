module ApplicationHelper

  def errors(model)
    render partial: "layouts/errors",
           locals: {model: model}
  end

  def notices
    render partial: "layouts/notice"
  end
end
