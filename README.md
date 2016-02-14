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
