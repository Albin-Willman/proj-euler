#!/usr/bin/env ruby
require './utils/prime-factor'

primes = Hash.new(0)
(2..20).each do |i|
  factor(i).each do |prime, number|
    primes[prime] = [number, primes[prime]].max
  end
end

puts primes.map { |prime, number| prime**number }.inject(1, :*)
