class Citizen
  attr_reader :first_name

  def initialize(first_name, last_name, age)
    @age        = age
    @first_name = first_name
    @last_name  = last_name
  end

  def can_vote?
    @age >= 18
  end

  def full_name
    @first_name = "ropnb"
    @first_name.strip.capitalize + " " + @last_name.upcase
  end
end