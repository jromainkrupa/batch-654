require_relative "../animal.rb"

describe Animal do
  describe "#initialize" do
    it "creates an animal instance" do
      animal = Animal.new("Pumba")
      expect(animal).to be_an(Animal)
    end

    it "should expose the animal name" do
      animal = Animal.new("Pumba")
      expect(animal.name).to eq("Pumba")
    end
  end

  describe "::phyla" do
    it "returns the four stuffs of the animal world" do
      list = Animal.phyla
      expect(list.size).to eq(4)
    end
  end

  describe "#eat" do
    it "should return a sentence Timon eats a scorpion" do
      animal = Animal.new("Timon")
      
      expect(animal.eat("scorpion")).to eq("Timon eats a scorpion.")
    end
  end
end