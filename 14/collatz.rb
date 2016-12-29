#!/usr/bin/env ruby

sequences = {}

def length_of_sequence(n, sequences)
  if n == 1
    sequences[n] = 1
    return sequences
  end
  next_val = (n % 2 == 0) ? n/2 : (n*3 +1)
  sequences = length_of_sequence(next_val, sequences) unless sequences[next_val]

  sequences[n] = sequences[next_val] + 1
  sequences
end

(1..999_999).each do |i|
  length_of_sequence(i, sequences)
end

puts sequences.max_by{ |k,v| v }
