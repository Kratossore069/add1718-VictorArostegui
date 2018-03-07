#!/usr/bin/ruby

file = ARGV[0]
usuarios = `cat #{file}`
usuarios = usuarios.split("\n")
puts "La cadena que se va a trabajar es #{usuarios}" 

user = `whoami`
users = user.split("\n") 		# Le quitamos el \n del final.

if users != "root" then
    puts "No puede ejecutar este script debido a que no es el usuario root."
	exit
end

if ARGV.empty? 					# Averiguar si se ha insertado el archivo con los nombres.
  puts "Fichero no especificado. Fin del programa."
  exit
end

usuarios.each do |usuario| 		# Con la lista ya separada por \n, voy a llamar cada usuario como una línea.
  valor = usuario.split(":")  	# Teniendo esas líneas, las separo por : y quedarán como "cajas".
  nombre = valor[0]			    # A esas "cajas", les doy una variable.
  action = valor[4]
  email = valor[2]
  existe = `id #{nombre}`		# Valor de la id del usuario.
  
  if email == "" then
    puts "El usuario no tiene email."
  end
    
  if action == "delete" then	# Si hay un "delete"...
    if existe == "" then		# Y si no existe el usuario, un valor en ese campo, hace el if. 
      puts "El usuario no existe."
    else
      system("deluser -f #{nombre}")
      puts "Usuario #{nombre} borrado."
    end  
  elsif action == "add" then	# Si hay un "add"...
    if existe != "" then		# Y si no existe el usuario, un valor en ese campo, hace el if.
      puts "El usuario existe."
    else
      system("useradd #{nombre}")
      puts "Usuario #{nombre} creado."
    end
  end
end
