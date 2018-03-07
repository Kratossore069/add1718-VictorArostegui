#!/usr/bin/ruby

documento = ARGV[0] 						# Tomo el programa y un argumento.
fichero = `cat #{documento}`  				# Creo una variable para ese argumento.
fich = fichero.split("\n")  				# Con esa variable que contiene el argumento, elimino el último espacio en blanco.
puts "El contenido del fichero es #{fich}"

if ARGV.empty?								# Pregunto si hay un archivo asociado al script.
  puts "No ha especificado un archivo."
  exit
end

fich.each do |user|  						# Para cada "caja" dentro de ese archivo.
  existe = `id #{user}`						# Valor de la id del usuario.
  if existe != ""	then					# Si el espacio es distinto de que esté en blanco...
	  puts "Se ha encontrado el usuario #{user}"
      system("sudo userdel -r #{user}")
      puts "Se ha eliminado el usuario #{user}"
    else									# Si el espacio está en blanco, significa que ya se eliminó ese usuario.
      puts "El usuario #{user} no existe."
  end
end
  
        

   


