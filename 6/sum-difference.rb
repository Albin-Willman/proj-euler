#!/usr/bin/env ruby
squared_sum = ((1 + 100)*50)**2
sum_squared = (1..100).map { |n| n**2 }.inject(0, :+)

puts squared_sum - sum_squared
