json.array! @media do |medium|
	json.url medium.url
	json.title medium.nombre
	json.tipo medium.tipo
	json.body medium.descripcion
end