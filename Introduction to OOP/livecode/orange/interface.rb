# rubocop:disable Metrics/LineLength
require_relative 'orange_tree'

orange_tree = OrangeTree.new

is_dead = orange_tree.dead?
until is_dead
  orange_tree.one_year_passes!
  print "One year passes"
  sleep(0.1)
  print "."
  sleep(0.05)
  print "."
  sleep(0.05)
  puts "."
  sleep(0.05)
  is_dead = orange_tree.dead?
  if is_dead
    puts "Your orange tree is dead :("
  else
    orange_tree.pick_a_fruit!
    puts "Your orange tree is #{orange_tree.age} year old, measures #{orange_tree.height} meter, gives #{orange_tree.fruits}, and is still alive :)"
  end
  sleep(0.1)
  puts ""
end
# rubocop:enable Metrics/LineLength
