class OrangeTree
  # data ?
  # age, height, fruits
  attr_reader :age, :height, :fruits, :dead

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def dead?
    @dead
  end

  def one_year_passes!
    @age += 1
    grow_up!
    may_be_dead!
    grow_fruits!
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits != 0
  end

  private 

  def grow_up!
    @height += 1 if @age <= 10
  end

  def may_be_dead!
    if @age >= 100
      @dead = true
    elsif @age > 50
      @dead = (@age > rand(51..100))
    end
  end

  def grow_fruits!
    @fruits = 0
    if @age > 5 && @age < 10
      @fruits = 100
    elsif @age >= 10 && @age < 15 
      @fruits = 200
    end
  end
end

# tree = OrangeTree.new
# 10.times do 
#   tree.one_year_passes!
# end

# you should be able to measure the height of the tree.
# You should be able to find out if the tree is dead.
# Each year, the tree should age by 1 year (it becomes older and taller, and eventually dies).
# A tree grows 1 meter per year until it is 10 years old. Then it stops growing.
# The orange tree cannot die until it reaches 50 years old.
# After 50 years, the probability of dying increases each year.
# No tree can live more than 100 years.
# A tree will produce 100 fruits a year once it is more than 5 years old.
# A tree will produce 200 fruits a year when it reaches 10 years old.
# A tree will not produce fruits once it reaches 15 years old.
# You should be able to pick a single fruit from the tree by calling the pick_a_fruit! method on your tree (but only if there are some left).
# At the end of each year, the fruits which have not been picked will fall off.
# You should be able to find out how many fruits are left hanging on the tree.