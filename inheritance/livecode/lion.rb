require_relative "animal.rb"

class Lion < Animal
  def talk
    @talk = "#{@name} roars"
  end  

  def eat(food)
    p food
    super + " Law of the Jungle!"
  end
end