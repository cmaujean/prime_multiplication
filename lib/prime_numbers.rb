class PrimeNumbers
  def initialize(number)
    @target = number
  end

  def primes
    result = [2]
    n = 3
    while result.count < @target do
      result << n if prime?(n)
      n += 2
    end
    result
  end

  def prime?(n)
    (2..(Math.sqrt(n).floor)).each do |pf|
      return false if n % pf == 0
    end
    true
  end
end