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

#Class variables are accessed using the @@ operator. These variables are associated with the class hierarchy rather than any object 
#instance of the class and are the same across all object instances. (These are similar to class "static" variables in Java or C++).
 class MyClass
    @@value = 1
    def add_one
      @@value= @@value + 1
    end
    
    def value
      @@value
    end
  end

#herencia
class Padre
	def saludar_mal
		puts "HOLA!!!!"
	end
end

class Hijo<Padre
end

#modulos
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

hijo = Hijo.new
hijo.saludar_mal

instanceOne = MyClass.new
instanceTwo = MyClass.new
puts instanceOne.value
instanceOne.add_one
puts instanceOne.value
puts instanceTwo.value

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


