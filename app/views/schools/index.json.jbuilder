json.array!(@schools) do |school|
  json.extract! school, :id, :name, :beg_year, :end_year, :city, :state, :country
  json.url school_url(school, format: :json)
end
