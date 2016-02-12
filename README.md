# Taller ruby Softtek (v0.1)

rvm use 2.2.4

que es ruby?
===========

Un lenguaje de programación dinámico y de código abierto enfocado en la simplicidad y productividad. 
Su elegante sintaxis se siente natural al leerla y fácil al escribirla.(sic doc oficial)

El creador del lenguaje, Yukihiro "Matz" Matsumoto, ha dicho que Ruby está diseñado para la productividad y la diversión del desarrollador, 
siguiendo los principios de una buena interfaz de usuario. Sostiene que el diseño de sistemas necesita enfatizar las necesidades humanas más que las de la máquina

#IRB 

```ruby
#Jugando un poco con la consola irb
"Hola Mundo"

puts "Hola Mundo"

"hola mundo".class

1.class

1.0.class

1.to_s

1.to_s.class

1+1

2*2

2**2

Math.sqrt(9)
#Array
numeros = [1, 2, 3, 4, 5, 6, 7, 8 , 9]

numeros.class

#iteraciones
numeros.each do |numero|
	if numero ==2
		puts “dos”
	end
	puts numero
end

#Hash
numeros = {"uno"=>1 , "dos"=>2 , "tres"=>3}
numeros.class

require "json"

numeros.to_json
numeros.keys
numeros.values

numeros.each do |key, value|
	puts key
end
```
#Que son las Gemas
Las gemas de Ruby son paquetes de librerías para Ruby que se instalan en el sistema y quedan listas para ser usadas, con un simple require o con mecanismos que aporta el propio sistema de gemas para Ruby

gem install "railties" #para uso de sacffold
gem install "devise" #para sign en una aplicacion

#RAILS

rails new myapp <-- crea una nueva aplicacion rails

rails g controller welcome index <-- genera un controlador "Welcome" con un metodo "index"

rails g scaffold Post nombre:string telefono:integer texto:text <-- genera el recurso Post completo.



rake routes <-- para ver todas las rutas del proyecto
rake db:migrate <-- para hacer mitraciones de bases de datos
