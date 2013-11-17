json.array!(@tasks) do |task|
  json.extract! task, :content, :project_id
  json.url task_url(task, format: :json)
end
