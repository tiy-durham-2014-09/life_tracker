json.array!(@schools) do |school|
  json.extract! school, :id, :name, :beginningYear, :endingYear
  json.url school_url(school, format: :json)
end
