require_relative "../meerkat.rb"

describe Meerkat do
  describe "#talk" do
    it "should returns a sentence that the roaring" do
      timon = Meerkat.new("Timon")
      expect(timon.talk).to eq("Timon bark")
    end
  end
end