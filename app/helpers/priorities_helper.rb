module PrioritiesHelper
  def style_priority(id)

    model = Priority.find(id)

    case model.name
      when "baixa"
        return "<span class='label label-success'>Baixa</span>"
      when "média"
        return "<span class='label label-info'>Média</span>"
      when "alta"
        return "<span class='label label-warning'>Alta</span>"
      when "crítica"
        return "<span class='label label-danger'>Crítica</span>"
      else
        raise RuntimeError.new("Unknown Option: #{model.name}")
    end
  end
end
