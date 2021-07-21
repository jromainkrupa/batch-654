require_relative "../lion.rb"

describe Lion do
  describe "#talk" do
    it "should returns a sentence that the roaring" do
      simba = Lion.new("Simba")
      expect(simba.talk).to eq("Simba roars")
    end
  end

  describe "#eat" do
    it "return Simba eats a gazelle. Law of the Jungle!" do
      lion = Lion.new("Simba")
      expect(lion.eat("gazelle")).to eq("Simba eats a gazelle. Law of the Jungle!")
    end
  end
end