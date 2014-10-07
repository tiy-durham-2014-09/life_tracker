json.array!(@life_events) do |life_event|
  json.extract! life_event, :id, :event_title, :event_year, :event_description
  json.url life_event_url(life_event, format: :json)
end
