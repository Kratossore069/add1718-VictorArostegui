#!/usr/bin/ruby

file = ARGV[0]
usuario = `cat #{file}`
usuario = usuario.split("\n")
puts "La cadena que se va a trabajar es #{usuario}" 

user = `whoami`

if user == "asir"
  then
    puts "No puede ejecutar este script debido a que no es el usuario root."
  else
    puts "Usuario root confirmado."
    
    info = usuario.pop # Esta línea fue necesaria para crear el array.
    puts "#{info}"
    inf = info.split(":") # Ahora lo separo por :
    puts "#{inf}"
    
    if inf[4] == "add"
      puts "Crearemos el usuario #{inf[0]}"
      system("sudo useradd -g victor -d /home -m -s /bin/bash victor")
      puts "Usuario #{inf[0]} creado."
      
    elsif inf[4] == "delete"
      puts "Eliminaremos el usuario #{inf[0]}"
      system("sudo userdel -r victor")
    end
end
