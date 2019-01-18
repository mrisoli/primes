require "./spec_helper"

describe Primes do

  describe "upto" do
    it "finds all primes up to 10 in an array" do
      Primes::Primes.upto(10).should eq([2,3,5,7])
    end
  end

  describe "is_prime" do
    it "2 is prime so it returns true" do
      p = Primes::Primes.new(10)
      p.is_prime(2).should be_true
    end

    it "17 is prime so it returns true" do
      p = Primes::Primes.new(20)
      p.is_prime(17).should be_true
    end

    it "9 is not prime so it returns false" do
      p = Primes::Primes.new(10)
      p.is_prime(9).should be_false
    end

    it "77 is not prime so it returns false" do
      p = Primes::Primes.new(100)
      p.is_prime(77).should be_false
    end
  end
end
