#!/usr/bin/ruby

num1 = ARGV[0].to_i
op = ARGV[1]
num2 = ARGV[2].to_i

if ARGV.size == 3

  if op == '+'
  then
    suma = num1 + num2
    puts "El resultado es #{suma}"

  elsif op == '-'
    resta = num1 - num2
    puts "El resultado es #{resta}"

  elsif op == 'x'
    multiplicar = num1 * num2
    puts "El resultado es #{multiplicar}"

  elsif op == '/'
    dividir = num1 / num2
    puts "El resultado es #{dividir}"

  end

end


