require_relative "animal"

class Warthdog < Animal
  def talk
    @talk = "#{@name} grunt"
  end  
  
end