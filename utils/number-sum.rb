def number_sum(i)
  i.to_s.split('').map(&:to_i).inject(0, :+)
end