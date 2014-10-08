require 'rspec/autorun'
require_relative('../lib/saluda/saludador.rb')


describe "Saluda" do
 it "dice Hola" do
    saludador = Saluda::Saludador.new()
    expect(saludador.saluda("Pepe")).to include("Hola")
 end
end
