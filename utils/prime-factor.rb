require 'prime'

def factor(n)
  test = 2
  primes = Hash.new(0)
  while (n > 1) do
    if (test.prime? && (n % test == 0))
      primes[test] += 1
      n = n / test
    else
      test += 1
    end
  end
  primes
end
