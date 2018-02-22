#!/usr/bin/ruby

admin = `whoami`

if admin != "root"
  puts "Debe ser el usuario root para acceder a este script."
  exit
  
  
elsif admin == "root"
  file = `cat userslist.txt`
  file = file.split("\n")
  
  
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


   


