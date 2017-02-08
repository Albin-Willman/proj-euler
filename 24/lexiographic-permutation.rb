#!/usr/bin/env ruby
puts [0,1,2,3,4,5,6,7,8,9].permutation.to_a.map(&:join).sort[999_999]