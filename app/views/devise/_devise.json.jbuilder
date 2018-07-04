json.extract! user, :id,:email,:password,:cedula,:nombre,:apellido,:estatus,:admin,:nacimiento,:facebook,:twitter,:instagram,:postal,:telefono,:country_id,:created_at,:updated_at
json.url user_url(user, format: :json)
