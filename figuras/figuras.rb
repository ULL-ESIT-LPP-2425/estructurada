#! /usr/local/rvm/gems/ruby-3.3.4/bin/ruby
# Ejemplo de Programación Estructurada o Modular

def perimetro_cuadrado(longitud_lado)
  longitud_lado * 4
end

def area_cuadrado(longitud_lado)
  longitud_lado * longitud_lado
end

def perimetro_triangulo(lado1, lado2, lado3)
  lado1 + lado2 + lado3
end

def area_triangulo(base, altura)
  base * altura / 2.0
end

# funciónn para calcular el perímetro de un circulo
def perimetro_circulo(radio)
  2 * Math::PI * radio
end

# función para calcular el área de un círculo
def area_circulo(radio)
  Math::PI * radio * radio
end

# Línea de comando
puts "\nLínea de comando: "

p ARGV #array de cadenas String predefinido

# Entrada/Salida
if ARGV.size == 0 then
  puts "Introduzca un número:"
  c = STDIN.gets
  n = c.to_i
  puts "El número introducido es #{n}"
else
  n = ARGV[0].to_i
end

# Bucles 

puts "\n--|--|--| Cuadrado  |--|--|--\n"
i = 1
while i <= n  
  puts "Perímetro de un cuadrado de lado #{i}: #{perimetro_cuadrado(i)}"
  puts "Área de un cuadrado de lado #{i}: #{area_cuadrado(i)}"
  i += 1
end

puts "\n--/\--/\--/ Triángulo  \--/\--/\--\n"
i = 1
while i <= n
  puts "Perímetro de un triángulo de lados #{i}: #{perimetro_triangulo(i, i, i)}"
  puts "Área de un triángulo de base y altura #{i}: #{area_triangulo(i, i)}"
  i += 1
end

puts "\n--/\--/\--/ Cirdulo  \--/\--/\--\n"
i = 1
while i <= n
  puts "Perímetro de un circulo de radio #{i}: #{perimetro_circulo(i)}"
  puts "Área de un circulo de radio #{i}: #{area_circulo(i)}"
  i += 1
end