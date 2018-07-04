class TwitterApi


#Funcion que permite obtener el timeline de una cuenta publica
def self.tweetsStream

	client.user_timeline("quinielaw")

end

#Esta funcion permite guardar los datos de configuracion solicitados en el DEV de twitter, que sirve para el acceso a la aplicacion y a las cuentas de twitter 
def self.client
  	@client ||= Twitter::REST::Client.new do |config|
    config.consumer_key        = "yY98YzrQRU5v2PXZ14K8SfRFr"
    config.consumer_secret     = "4XIXsPfFTtVTkUxe5KXD7q2ebQlY6x3WXCFRW7F1z3qUkuzMfW"
    config.access_token        = "237922184-bz59FjkBcWQ8ni9XLOynIPDqAg5N1AKqThA9N999"
    config.access_token_secret = "d5kk5vJViuiI7tlzyD6eY0s9NWLRdJQVyJTTxps7Vphlt"
   end
 end
end