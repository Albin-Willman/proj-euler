#!/usr/bin/env ruby
require './utils/divisors'

def is_abundant?(n)
  n < sum_of_divisors(n)
end

limit = 28123
abundant_numbers, non_abundant_sum = [], 0
(2..limit).each do |n|
  abundant_numbers << n if is_abundant?(n)
end

possible_sums = {}
abundant_numbers.each do |a|
  abundant_numbers.each do |b|
    possible_sums[a+b] = true
  end
end

(1..limit).each do |n|
  non_abundant_sum += n unless possible_sums[n]
end

puts "#{non_abundant_sum}"
