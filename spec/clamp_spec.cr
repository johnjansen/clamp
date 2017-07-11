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

  describe "Number" do
    it "lower" do
      1.clamp(2, 3).should eq 2
      2.clamp(2, 3).should eq 2
    end

    it "upper" do
      4.clamp(2, 3).should eq 3
      3.clamp(2, 3).should eq 3
    end

    it "within" do
      2.clamp(1, 3).should eq 2
    end
  end
end
