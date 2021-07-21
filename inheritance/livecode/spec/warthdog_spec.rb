require_relative "../warthdog.rb"

describe Warthdog do
  describe "#talk" do
    it "should returns a sentence that the roaring" do
      pumba = Warthdog.new("Pumba")
      expect(pumba.talk).to eq("Pumba grunt")
    end
  end
end