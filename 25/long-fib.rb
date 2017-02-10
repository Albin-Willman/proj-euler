#!/usr/bin/env ruby
limit, fm1, fm, n = 1_000, 0, 1, 1

while fm.to_s.length < limit
  tmp = fm
  fm = tmp + fm1
  fm1 = tmp
  n += 1
end

puts "== #{n} =="
