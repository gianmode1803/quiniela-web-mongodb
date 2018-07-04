json.extract! player, :id, :nombre, :apellido, :fecha_nacimiento, :ciudad_nacimiento, :posicion, :dorsal, :apodo, :debut, :participaciones, :foto, :goles, :created_at, :updated_at
json.url player_url(player, format: :json)
