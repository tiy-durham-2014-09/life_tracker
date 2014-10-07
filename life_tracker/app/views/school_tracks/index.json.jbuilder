json.array!(@school_tracks) do |school_track|
  json.extract! school_track, :id, :school_name, :year_school_began, :year_school_ended
  json.url school_track_url(school_track, format: :json)
end
