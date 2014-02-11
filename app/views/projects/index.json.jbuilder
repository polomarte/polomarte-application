json.array!(@projects) do |project|
  json.extract! project, :id, :nome
  json.url project_url(project, format: :json)
end
