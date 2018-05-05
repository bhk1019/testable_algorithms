require 'spec_helper'

RSpec.describe Collatz, type: :model do 
  describe "next_n_of should return the correct next number" do
    it "should return 1 given 1" do
      expect(Collatz.next_n_of(1)).to be 1
    end
    it "should return 10 given 3" do
      expect(Collatz.next_n_of(3)).to be 10
    end
    it "should return 8 given 16" do
      expect(Collatz.next_n_of(16)).to be 8
    end
  end

  describe "length_of should return the correct length" do
    it "should return 1 given 1" do
      expect(Collatz.length_of(1)).to be 1
    end
    it "should return 8 given 3" do
      expect(Collatz.length_of(3)).to be 8
    end
    it "should return 17 given 7" do
      expect(Collatz.length_of(7)).to be 17
    end
  end
end