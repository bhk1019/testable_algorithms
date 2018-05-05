require 'spec_helper.rb'

RSpec.describe Fib, type: :model do 
  describe 'iterative fibonacci method should return the correct output' do 
    it 'should return 0 if the index is 0' do 
      expect(Fib.fib_iterative(0)).to be 0
    end

    it 'should return 3 if the index is 4' do
      expect(Fib.fib_iterative(4)).to be 3
    end

    it 'should return 13 if the index is 7' do
      expect(Fib.fib_iterative(7)).to be 13
    end

    it 'should return 34 if the index is 9' do
      expect(Fib.fib_iterative(9)).to be 34
    end
  end

  describe 'recursive Fibonacci method should return the correct output' do
    it 'should return 0 if the index is 0' do 
      expect(Fib.fib_recursive(0)).to be 0
    end

    it 'should return 3 if the index is 4' do
      expect(Fib.fib_recursive(4)).to be 3
    end

    it 'should return 13 if the index is 7' do
      expect(Fib.fib_recursive(7)).to be 13
    end

    it 'should return 34 if the index is 9' do
      expect(Fib.fib_recursive(9)).to be 34
    end
  end
end