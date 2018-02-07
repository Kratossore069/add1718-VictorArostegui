#!/usr/bin/ruby

documento = ARGV[0]
fichero = `cat #{documento}`
linea = fichero.split("\n")

linea.each do |lines|
  argv = lines.split
    num1 = ARGV[0].to_i
    op = ARGV[1]
    num2 = ARGV[2].to_i
    
for i in lines
  if op == '+'
  then
    suma = num1 + num2
    puts "La solución al ejercicio es #{suma}"
    
  elsif op == '-'
    resta = num1 - num2
    puts "La solución al ejercicio es #{resta}"
    
  elsif op == '*'
    multiplicar = num1 * num2
    puts "La solución al ejercicio es #{multiplicar}"
    
  elsif op == '/'
    dividir = num1 / num2
    puts "La solución al ejercicio es #{dividir}"
  end
end
    


  
