#!/usr/bin/env ruby

class NumberTransformer

  NUMBER_NAMES = {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
    100 => 'hundred',
    1000 => 'thousand'
  }

  def self.convert(i)
    return '' if i == 0
    return "#{convert(i/1000)} #{NUMBER_NAMES[1000]} #{convert(i%1000)}" if i >= 1000
    return "#{convert(i/100)} #{NUMBER_NAMES[100]}" if i % 100 == 0
    return "#{convert(i/100)} #{NUMBER_NAMES[100]} and #{convert(i%100)}" if i >= 100
    return NUMBER_NAMES[i] if NUMBER_NAMES[i]
    "#{NUMBER_NAMES[(i/10)*10]}-#{NUMBER_NAMES[i%10]}"
  end
end

def count_letters(s)
  s.gsub(/\s+/, '').gsub('-', '').length
end

def count_letters_in_span(first, last)
  (first..last).to_a.inject(0) { |s, i|  count_letters(NumberTransformer.convert(i)) + s }
end

puts NumberTransformer.convert(1)
puts NumberTransformer.convert(2)
puts NumberTransformer.convert(14)
puts NumberTransformer.convert(21)
puts NumberTransformer.convert(30)
puts NumberTransformer.convert(115)
puts NumberTransformer.convert(342)
puts count_letters(NumberTransformer.convert(342))

puts count_letters_in_span(1, 5)
puts count_letters_in_span(1, 1000)

