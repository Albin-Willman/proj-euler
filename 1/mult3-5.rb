#!/usr/bin/env ruby

puts (1..999).to_a.select { |i| i % 3 == 0 || i % 5 == 0 }.inject(0, :+)