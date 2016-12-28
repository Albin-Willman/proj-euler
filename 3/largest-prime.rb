#!/usr/bin/env ruby
require './utils/prime-factor'
n = 600851475143
primes = factor(n)

puts "Here's your number: #{primes.keys.max}"