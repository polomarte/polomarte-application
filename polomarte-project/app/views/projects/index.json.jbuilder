json.array!(@projects) do |project|
  json.extract! project, :name, :finalized
  json.url project_url(project, format: :json)
end
