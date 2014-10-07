json.array!(@schools) do |school|
  json.extract! school, :id, :name, :StartDate, :EndDate
  json.url school_url(school, format: :json)
end
