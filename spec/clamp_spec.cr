require "./spec_helper"

describe Clamp do
  # TODO: Write tests

  describe "Char" do
    it "lower" do
      'a'.clamp('b', 'c').should eq 'b'
      'b'.clamp('b', 'c').should eq 'b'
    end

    it "upper" do
      'd'.clamp('b', 'c').should eq 'c'
      'c'.clamp('b', 'c').should eq 'c'
    end

    it "within" do
      'b'.clamp('a', 'c').should eq 'b'
    end
  end

  describe "String" do
    it "lower" do
      "a".clamp("b", "c").should eq "b"
      "b".clamp("b", "c").should eq "b"
    end

    it "upper" do
      "d".clamp("b", "c").should eq "c"
      "c".clamp("b", "c").should eq "c"
    end

    it "within" do
      "b".clamp("a", "c").should eq "b"
    end
  end
end
