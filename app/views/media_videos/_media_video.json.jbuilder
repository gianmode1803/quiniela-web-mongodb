json.extract! media_video, :id, :url, :titulo, :descripcion, :fecha, :created_at, :updated_at
json.url media_video_url(media_video, format: :json)
