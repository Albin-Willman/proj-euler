#!/usr/bin/env ruby
require 'prime'
primes = []
(1..999_999).each { |n| p = 2*n + 1; primes << p if p.prime? }
puts primes.inject(2, :+)
