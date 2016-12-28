#!/usr/bin/env ruby

def is_triplet?(a, b, c)
  (a**2 + b**2) == c**2
end

def find_triplet
  (1..332).each do |a|
    ((a+1)..498).each do |b|
      ((b+1)..998).each do |c|
        return a*b*c if (a+b+c) == 1000 && is_triplet?(a, b, c)
      end
    end
  end
end

puts find_triplet