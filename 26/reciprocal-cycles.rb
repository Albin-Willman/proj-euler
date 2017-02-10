#!/usr/bin/env ruby

def cycle_length(n)
  sequence, remainder, counter = {}, 10 % n, 1
  until sequence[remainder]
    sequence[remainder] = counter
    remainder = (10*remainder) % n
    return 0 if remainder == 0
    counter += 1
  end
  counter - sequence[remainder]
end

puts cycle_length(7)
puts cycle_length(11)

max_sequence, d = 0, nil
(2..999).to_a.reverse.each do |i|
  break if i < max_sequence
  l = cycle_length(i)
  if l > max_sequence
    d = i
    max_sequence = l
  end
end

puts "#{d} => #{max_sequence}"
