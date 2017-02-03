#!/usr/bin/env ruby

def split_line(line)
  line.split(',').map { |n| n.gsub(/\s+/, '').gsub('"', '') }
end
names = []
File.open('./22/data.txt').read.each_line { |line|
  names = split_line(line)
}
names.sort!
def char_to_i(c)
  c.ord - 64
end

def score_name(name)
  name.split('').map { |c| char_to_i(c) }.inject(0, :+)
end

puts score_name("COLIN")
score = 0
names.each_with_index do |name, i|
  score += (i + 1)*score_name(name)
end

puts score
