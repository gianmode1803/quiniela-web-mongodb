json.array! @calendar do |calendar|
	json.date calendar.date
	json.time calendar.time
	json.fase calendar.text
	json.stadia do
		json.nombre calendar.stadia.nombre
	end
end