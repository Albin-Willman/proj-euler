#!/usr/bin/env ruby
data = []
File.open('./13/data.txt').read.each_line { |line| data << line.to_i }
puts data.inject(0, :+).to_s[0..9]
