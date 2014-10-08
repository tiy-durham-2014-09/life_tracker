json.array!(@schools) do |school|
  json.extract! school, :id, :name, :beginning_year, :ending_year, :city, :state, :country, :postal_code
  json.url school_url(school, format: :json)
end
