#!/usr/bin/env ruby
require './utils/prime-factor'

def is_amicable?(a)
  sum1 = sum_of_divisors(a)
  return false if sum1 == a
  sum_of_divisors(sum1) == a
end

def sum_of_divisors(a)
  divisors(a).inject(0, :+)
end

def divisors(a)
  (1..(a-1)).to_a.select { |i| a%i == 0 }
end

puts "#{divisors(220)}, #{sum_of_divisors(sum_of_divisors(220))} #{is_amicable?(220)}"
sum = 0
(2..9999).each do |i|
  sum += i if is_amicable?(i)
end

puts sum