# TODO: Write documentation for `Primes`
module Primes
  VERSION = "0.1.0"

  class Primes
    property primes : Array(Int32)
    def initialize(@limit : Int32)
      @primes = sieve
    end

    # generates an array with all primes up to n
    def self.upto(n : Int32)
      Primes.new(n).primes
    end

    def self.is_prime(n : Int32)
      Primes.new(Math.sqrt(n).floor).is_prime(n)
    end

    def is_prime(n : Int32)
      @primes.includes?(n) || @primes.none?{|i| n % i == 0}
    end

    def sieve : Array(Int32)
      indexes = Array.new(@limit, true)
      indexes[0] = false
      indexes[1] = false
      (2..(Math.sqrt(@limit))).each do |i|
        next unless indexes[i]
        ((i**2)...@limit).step(i).each do |j|
          indexes[j] = false
        end
      end
      indexes.map_with_index{|el, i| el ? i : nil}.compact
    end
  end
end
