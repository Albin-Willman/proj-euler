#!/usr/bin/env ruby

range, max = (100..999), 0
def is_palindrome?(n)
  n.to_s == n.to_s.reverse
end

range.each do |i|
  range.each do |j|
    val = i*j
    max = val if val > max && is_palindrome?(val)
  end
end

puts max
