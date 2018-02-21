#!/usr/bin/ruby

admin = `whoami`
if admin != 'root'
  puts("Debe ser el usuario root para acceder a este script.")
  exit
end 


