json.array!(@priorities) do |priority|
  json.extract! priority, :name
  json.url priority_url(priority, format: :json)
end
