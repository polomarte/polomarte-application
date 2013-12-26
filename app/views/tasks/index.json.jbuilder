json.array!(@tasks) do |task|
  json.extract! task, :name, :project_id
  json.url task_url(task, format: :json)
end
