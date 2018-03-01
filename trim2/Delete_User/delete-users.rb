#!/usr/bin/ruby

documento = ARGV[0]   // ---> Paso para llamar a un argumento en consola.  //
fichero = `cat #{documento}`  // Dicho fichero será userlist y se llamará documento. //
fich = fichero.split("\n")  // Con este último comando le quitamos el último salto de línea. //

mostrar = `cat #{fich}`
puts "Su fichero es #{mostrar}"

fich.each do |a|  
  if a == "victor"
    then
      system("sudo userdel -r #{a}")
      puts "Se ha eliminado el usuario #{a}"
    else
      puts "No se encuentra el usuario #{a}"
  end
end
  
        

   


