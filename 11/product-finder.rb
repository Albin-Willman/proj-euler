#!/usr/bin/env ruby
data = []

File.open('./11/data.txt').read.each_line do |line|
  data << line.split(' ').map(&:to_i)
end

def prod(arr)
  arr.inject(1, :*)
end

def lines(data, x, y)
  arrs = [
    data[y][x..(x+3)],
    [data[y][x], data[y+1][x], data[y+2][x], data[y+3][x]],
    [data[y][x], data[y+1][x+1], data[y+2][x+2], data[y+3][x+3]]
  ]
  arrs << [data[y][x], data[y+1][x-1], data[y+2][x-2], data[y+3][x-3]] if x > 2
  puts "#{arrs}"

  arrs
end

max = 0
(0..(data.length-4)).each do |j|
  (0..(data[0].length-4)).each do |i|
    max = ([max] + lines(data, j, i).map { |l| prod(l) }).max
  end
end

puts max
