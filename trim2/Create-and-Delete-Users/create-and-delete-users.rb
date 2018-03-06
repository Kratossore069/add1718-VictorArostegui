#!/usr/bin/ruby

file = ARGV[0]
usuario = `cat #{file}`
usuario = usuario.split("\n")
puts "La cadena que se va a trabajar es #{usuario}" 

user = `whoami`
users = user.split("\n")

if users != "root"
  then
    puts "No puede ejecutar este script debido a que no es el usuario root."
  else
    puts "Usuario root confirmado."
    
    info = usuario.pop # Esta línea fue necesaria para crear el array.
    puts "#{info}"
    inf = info.split(":") # Ahora lo separo por :
    puts "#{inf}"
    
    inf.each do |cambio|
      cambio = inf
      if cambio[4] == "add"
        puts "Crearemos el usuario #{cambio[0]}"
        system("sudo useradd #{cambio[0]}")
        puts "Usuario #{cambio[0]} creado."
      
      elsif cambio[4] == "delete"
        puts "Eliminaremos el usuario #{cambio[0]}"
        system("sudo userdel -r #{cambio[0]}")
      end
      
      if cambio[2] == ""
	    puts "El usuario #{cambio[0]} no tiene email."
      end
    end
end
