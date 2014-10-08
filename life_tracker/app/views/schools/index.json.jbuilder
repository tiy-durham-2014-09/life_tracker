json.array!(@schools) do |school|
  json.extract! school, :id, :name, :start_date, :end_date, :person_id, :city, :state, :country
  json.url school_url(school, format: :json)
end
