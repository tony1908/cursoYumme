require_relative 'Consulta.rb'

lectura = gets.chomp
consulta = Consulta.new
var = consulta.hacerConsulta(lectura)
var.each do |res|
	puts res["name"]
	puts res["external_urls"]["spotify"]
end
