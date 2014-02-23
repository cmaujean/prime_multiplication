require 'spec_helper'
require_relative '../lib/prime_numbers'

describe PrimeNumbers do
  context "#prime?" do
    before :each do
      @p = PrimeNumbers.new(1)
    end
    it "returns true for prime numbers" do

      [3,1087,1091,1093,1097,1103,1109,1117,1123,1129,1151].each do |cand|
        @p.prime?(cand).should be_true
      end
    end

    it "returns false for non-prime numbers" do
      [4,6,25,100,1000,10000000].each do |cand|
        @p.prime?(cand).should be_false
      end
    end
  end
  context "with a starting number of 10" do
    context "#primes" do
      it "produces the first 10 primes as an array" do
        s = PrimeNumbers.new(10)
        s.primes.should be_a_kind_of(Array)
        s.primes.should == [2,3,5,7,11,13,17,19,23,29]
      end
    end
  end
  context "with a starting number of 20" do
    context "#primes" do
      it "produces the first 20 primes as an array" do
        s = PrimeNumbers.new(20)
        s.primes.should be_a_kind_of(Array)
        s.primes.should == [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71]
      end
    end
  end
end