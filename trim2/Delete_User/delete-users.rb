#!/usr/bin/ruby

documento = ARGV[0] 						# Tomo el programa y un argumento.
fichero = `cat #{documento}`  				# Creo una variable para ese argumento.
fich = fichero.split("\n")  				# Con esa variable que contiene el argumento, elimino el último espacio en blanco.
puts "El contenido del fichero es #{fich}"

fich.each do |user|  
  if user == " "
    then
      system("sudo userdel -r #{user}")
      puts "Se ha eliminado el usuario #{user}"
    else
      puts "El usuario #{user} ya se encuentra eliminado."
  end
end
  
        

   


