#!/usr/bin/ruby

file = ARGV[0]
usuario = `cat #{file}`
usuario = usuario.split("\n")
system("cat #{usuario}")

user = `whoami`

if user != "root"
  then
    puts "No puede ejecutar este script debido a que no es el usuario root."
  else
    puts "Usuario root confirmado."
end
