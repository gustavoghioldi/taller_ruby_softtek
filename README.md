# Taller ruby Softtek (v0.1)

####Instructor: Gustavo Ghioldi

####Versión Ruby: 2.2.4 (con rvm)

##Que es Ruby?


>Un lenguaje de programación dinámico y de código abierto enfocado en la simplicidad y productividad. 
Su elegante sintaxis se siente natural al leerla y fácil al escribirla.__(sic doc oficial)__

![Yukihiro "Matz" Matsumoto](https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Yukihiro_Matsumoto.JPG/220px-Yukihiro_Matsumoto.JPG "Yukihiro") ___Yukihiro "Matz" Matsumoto___

El creador del lenguaje, Yukihiro "Matz" Matsumoto, ha dicho: 
>_Ruby está diseñado para la productividad y la diversión del desarrollador, 
siguiendo los principios de una buena interfaz de usuario. Sostiene que el diseño de sistemas necesita enfatizar las necesidades humanas más que las de la máquina_

##IRB 

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

##Funciones
```Ruby
def saludo
	puts "hola mundo!!!"
end

saludo

def saludar(nombre, apellido)
	puts "hola #{nombre}, #{apellido}"
end

saludar "Gustavo","Ghioldi"
```
##Clases
```
class Anfitrion
	# attr_accessor, attr_reader, attr_writer
	def initialize(nombre="Mundo")
	#También toma nota de @nombre. Esta es una variable de instancia y está disponible para todos los métodos de la clase
		@nombre = nombre
	end

	def decir_hola
		puts "Hola #{@nombre}"
	end

	def decir_adios
		puts "Adios #{@nombre}"
	end

#private
	def nombre
		return @nombre
	end

	def nombre=(nombre)
		@nombre= nombre
	end

end

anfi_sin_nombre = Anfitrion.new

anfi_sin_nombre.decir_hola
anfi_sin_nombre.decir_adios

anfi_sin_nombre.nombre= "GUSTAVO"
puts anfi_sin_nombre.nombre

anfi_con_nombre = Anfitrion.new "Gustavo" 

anfi_con_nombre.decir_hola
anfi_con_nombre.decir_adios	


puts anfi_sin_nombre.respond_to?("nombre")
puts anfi_sin_nombre.respond_to?("decir_hola")

#herencia
class MalAnfitrion<Anfitrion
    def initialize
        super
    end
    def decir_hola
        puts "Yo no saludo"
    end
mal_anfi = MalAnfitrion.new
mal_anfi.decir_hola

#modulos (Herencia Múltiple??)
module A
   def a1
	puts "A:a1"
   end
   def a2
	puts "A:a2"
   end
end
module B
   def b1
	puts "B:b1"
   end
   def b2
	puts "B:b2"
   end
end

class Sample
include A
include B
   def s1
	puts "Sample:s1"
   end
end

samp=Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1
```

##Que son las Gemas
Las gemas de Ruby son paquetes de librerías para Ruby que se instalan en el sistema y quedan listas para ser usadas, con un simple require o con mecanismos que aporta el propio sistema de gemas para Ruby

    gem install "devise" #para sign en una aplicacion
---
#RAILS
##Que es Ruby on Rails(RoR)?
>"Un conjunto de librerías, automatismos y convenciones destinados a resolver los problemas más comunes a la hora de desarrollar una aplicación web, para que el programador pueda concentrarse en los aspectos únicos y diferenciales de su proyecto en lugar de los problemas recurrentes." (sic http://www.rubyonrails.org.es/)

###Comandos de RoR
crea una nueva aplicacion rails

    rails new myapp
genera un controlador "Welcome" con un metodo "index" y el view de index

    rails g controller welcome index

genera el recurso "Posteo" completo

    rails g scaffold Posteo nombre:string telefono:integer texto:text


para ver todas las rutas del proyecto
   
    rake routes
    
para hacer mitraciones de bases de datos
    
    rake db:migrate
