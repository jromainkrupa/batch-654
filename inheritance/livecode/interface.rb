require_relative "lion"
require_relative "meerkat"
require_relative "warthdog"

animals = []

animals << Lion.new("Simba")
animals << Lion.new("Moufassa")
animals << Meerkat.new("Timon")
animals << Warthdog.new("Pumba")

animals.each do |animal|
  puts animal.talk
end