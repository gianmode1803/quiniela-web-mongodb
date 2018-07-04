json.extract! event, :id, :minuto, :tipo, :gol, :player_id, :match_id, :created_at, :updated_at
json.url event_url(event, format: :json)
