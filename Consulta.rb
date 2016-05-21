class Consulta 
	require 'rest-client'

	def initialize()
		
	end

	def hacerConsulta(cadena)
		cadena = cadena.split(",")
		begin
			respuestaApi = RestClient.get 'https://api.spotify.com/v1/search?query='+cadena[0]+'&offset=0&limit='+cadena[2]+'&type='+cadena[1]
		    if respuestaApi.code == 200
			   respuestaApi = JSON.parse(respuestaApi)
			   if respuestaApi["tracks"]
				  return respuestaApi["tracks"]["items"]
			   else
				  return respuestaApi["artists"]["items"]
			   end
		    else
			   return []
		    end
		rescue Exception => e
			puts "Hubo un porblema"
			return []
		end
	end
	
	
end