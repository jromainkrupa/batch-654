require_relative "../lib/citizen.rb"
describe Citizen do
  describe "#can_vote?" do 
    it "returns true if the citizen age is 18" do
      jean = Citizen.new("jean","krupa",31)
      expect(jean.can_vote?).to eq(true)
    end

    it "returns false if the citizen age is 18" do
      titi = Citizen.new("titi","grosminiter",16)
      expect(titi.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do 
    it "return the full name capitalized of the person" do 
      jean = Citizen.new("   jean","kRUpa",31)
      expect(jean.full_name).to eq("Jean KRUPA")
    end
  end
end