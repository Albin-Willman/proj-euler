#!/usr/bin/env ruby
require './utils/fib'

sum, val, n = 0, 0, 0

while val < 4_000_000
  sum += val
  val = fib(3*n)
  n += 1
end
puts sum
