#!/usr/bin/ruby

user = `whoami`
admin = user.chomp # -----> chomp es para quitar el \n del final, no es como un split.

if admin != "root"
  puts "Debe ser el usuario root para acceder a este script."
  exit
  
  
else
  texto = `cat userslist.txt`
  file = texto.split("\n")
  
  
  if file[4] == "delete"
    eliminar = `rm userslist.txt`
    puts "#{eliminar}"
    
    
  elsif file[4] == "add"
    crear = `create user victorcarvajal`
    puts "#{crear}"
    
  else file[2] != "victor@gmail.com"
    puts "Este usuario no tiene establecido un email."
  end
  
end


   


