require_relative "animal"

class Meerkat < Animal
  def talk
    @talk = "#{@name} bark"
  end  
  
end