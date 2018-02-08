#!/usr/bin/ruby

documento = ARGV[0]
fichero = `cat #{documento}`
linea = fichero.split("\n")

linea.each do |lines|
  argv = lines.split(" ")
  num1 = argv[0].to_i
  op = argv[1]
  num2 = argv[2].to_i
  if op == '+'
    then
      suma = num1 + num2
      puts "La solución al ejercicio es: #{num1} #{op} #{num2} = #{suma}"
    
    elsif op == '-'
      resta = num1 - num2
      puts "La solución al ejercicio es: #{num1} #{op} #{num2} = #{resta}"
    
    elsif op == 'x'
      multiplicar = num1 * num2
      puts "La solución al ejercicio es: #{num1} #{op} #{num2} = #{multiplicar}"
    
    elsif op == '/'
      dividir = num1 / num2
      puts "La solución al ejercicio es: #{num1} #{op} #{num2} = #{dividir}"
  end
end
    


  
