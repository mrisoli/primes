require "./spec_helper"

describe Primes do
  # TODO: Write tests

  describe "upto" do
    it "finds all primes up to 10" do
      Primes::Primes.upto(10).should eq([2,3,5,7])
    end
  end
end
