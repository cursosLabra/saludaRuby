require_relative('options')

module Saluda

 class Saludador
   def saluda(nombre)
    "Hola: " + nombre
   end
 end
 
  class Main
	def initialize(argv)
		@options = Options.new(argv)
		@saludador = Saludador.new
	end

	def run
		puts @saludador.saluda(@options.persona)
	end
  end


end # module