require_relative "building.rb"

class House
  attr_reader :name, :butler

  def initialize(name)
    @name = name
    puts "je suis dans l'init"
    p self
    @butler = Butler.new(self) # We need to pass the current instance of House
  end
end