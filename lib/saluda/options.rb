require 'optparse'

module Saluda

class Options

	DEFAULT_PERSONA = "Amigo"
	
	attr_reader :persona
	
	def initialize(argv)
		@persona = DEFAULT_PERSONA
		parse(argv)
	end

	private
	
	def parse(argv)
		OptionParser.new do |opts|
		opts.banner = "Usage: saluda [ options ]"

		opts.on("-p", "--persona persona", String, "Persona a saludar") do |p|
			@persona = p
		end
	
		opts.on("-h", "--help", "Show this message") do
			puts opts
			exit
		end

		begin
			opts.parse!(argv)
			rescue OptionParser::ParseError => e
				STDERR.puts e.message, "\n", opts
				exit(-1)
			end
		end
    end 
  end # class saludador
end # module