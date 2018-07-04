json.articles @articles do |article|
	json.id article.id
	json.titulo article.titulo
	json.cuerpo article.cuerpo
	json.fecha article.fecha
	json.autor article.autor
	json.destacado article.destacado
end

