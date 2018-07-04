json.extract! article, :id, :titulo, :cuerpo, :fecha, :autor, :destacado, :created_at, :updated_at, :foto
json.url article_url(article, format: :json)
