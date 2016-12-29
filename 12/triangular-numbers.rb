#!/usr/bin/env ruby
require './utils/prime-factor'

def nbr_divisors(factors)
  factors.values.inject(1) { |p, e| p*(e+1) }
end
test, i, divisors, limit = 0, 0, 0, 500

while divisors < limit
  i += 1
  test += i
  divisors = nbr_divisors(factor(test))
end

puts "#{test}, #{divisors}"
