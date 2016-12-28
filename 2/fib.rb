#!/usr/bin/env ruby

def fib(n)
  f = Math.sqrt(5)
  ((((1 + f)/2)**n - ((1 - f)/2)**n)/f).round
end

sum, val, n = 0, 0, 0

while val < 4_000_000
  sum += val
  val = fib(3*n)
  n += 1
end
puts sum
