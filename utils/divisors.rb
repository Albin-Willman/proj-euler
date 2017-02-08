def divisors(a)
  (1..(a-1)).to_a.select { |i| a%i == 0 }
end

def sum_of_divisors(a)
  divisors(a).inject(0, :+)
end