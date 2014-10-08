Gem::Specification.new do |s|
	s.name = "saluda"
	s.summary = "Saludar a personas"
	s.description = File.read(File.join(File.dirname(__FILE__), 'README'))
	s.version = "0.0.1"
	s.author = "Jose Labra"
	s.email = "labra@uniovi"
	s.platform = Gem::Platform::RUBY
	s.required_ruby_version = '>=1.9'
	s.files = Dir['**/**']
	s.executables = [ 'saluda' ]
	s.test_files = Dir["test/*_spec.rb"]
	s.has_rdoc = false
end