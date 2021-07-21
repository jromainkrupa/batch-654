# 1 fichier = 1 class
# nom du fichier en lower snake case, sports_car.rb
# nom de la classe en capitalize

class Car 

  attr_reader :color # permet de faire car_instance.color
  # def color
  #   @color
  # end
  
  attr_writer :color # permet de faire car_instance.color = "blue"
  # def color=(new_color)
  #   @color = new_color
  # end
  
  attr_accessor :color # permet d'exposer ses variables d'instances en écriture et lecture

  def initialize(color) # constructor
    @color = color # variable d'instance color
    @engine_started = false # variable d'instance engine_started
  end

  def start_engine
    start_fuel_pump
    init_spark_plug
  end

  private # vous ne pouvez pas appeler ces méthode depuis l'extérieur du programme

  def start_fuel_pump
    puts "I start the pump"
  end

  def init_spark_plug
    puts "I start the plug"
  end
end
