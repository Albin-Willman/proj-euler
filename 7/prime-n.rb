#!/usr/bin/env ruby
require 'prime'

def find_prime(n)
  return 2 if n == 1
  found, test = 2, 3
  while found < n
    test += 2
    found += 1 if test.prime?
  end
  test
end

puts find_prime(10_001)