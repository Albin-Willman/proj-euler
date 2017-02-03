#!/usr/bin/env ruby
require './utils/factorial'
require './utils/number-sum'

puts number_sum(factorial(10))
puts number_sum(factorial(100))