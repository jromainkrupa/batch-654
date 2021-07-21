class Test
  def introduce
    puts "coucou"
  end
  def self.introduce
    puts "coucou"
  end

end

Test.introduce

toto = Test.new
toto.introduce
