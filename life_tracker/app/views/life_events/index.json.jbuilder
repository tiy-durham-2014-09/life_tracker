json.array!(@life_events) do |life_event|
  json.extract! life_event, :id, :event_desc, :start_year, :end_year
  json.url life_event_url(life_event, format: :json)
end
