require_relative "building.rb"

class Flat < Building
  def coucou
    puts "-------------------------------"
    p
    puts "-------------------------------"
    puts "coucou!!!"
  end

  def self.calculate_square_meter_price(city)
    case city
    when "Paris" then 10000
    when "Lyon" then 5000
    else
      "sorry we don't have the data for this town"
    end
  end
end

# class Room
#   def initialize
#     @patients = []
#   end

#   def add_a_patient
#     @patients << Patient.new(self)
#   end
# end

# class Patient
#   def initialize(room)
#     @room = Room.new(self)
#   end
# end