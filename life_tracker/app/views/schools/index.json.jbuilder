json.array!(@schools) do |school|
  json.extract! school, :id, :school_name, :beginning_date, :ending_date
  json.url school_url(school, format: :json)
end
