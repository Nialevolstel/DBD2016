json.array!(@medical_teams) do |medical_team|
  json.extract! medical_team, :id, :es_valido
  json.url medical_team_url(medical_team, format: :json)
end
