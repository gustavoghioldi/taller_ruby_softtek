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
```Ruby
module En
        def say_hi
                puts "Hi #{@nombre}!"
        end
end

class Anfitrion
#attr_accessor :nombre
include En
        def initialize(nombre="Mundo")
                @nombre = nombre
        end

        def decir_hola
                puts "Hola #{@nombre}"
        end

        def decir_adios
                puts "Chau #{@nombre}"
        end

        def que_tipo_de_anfitrion_soy?
                puts self.class
        end
#private
        def valor=(mi_valor)
                @mi_valor = mi_valor
        end

        def valor
                return "el valor es:  #{@mi_valor}"
        end
end

class MalAnfitrion<Anfitrion
        def decir_hola
                puts "Yo no saludo"
        end
end

a = Anfitrion.new
a.decir_hola
a.say_hi
a.que_tipo_de_anfitrion_soy?
a.valor=1
puts a.valor

ma = MalAnfitrion.new "Gustavo"
ma.decir_hola
ma.decir_adios
ma.say_hi
ma.que_tipo_de_anfitrion_soy?
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


#### lectura recomendada: http://rubytutorial.wikidot.com/
