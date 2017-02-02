#!/usr/bin/env ruby

class Triangle
  attr_accessor :rows, :paths

  def initialize
    @rows = []
  end

  def add_row(row)
    throw 'Bad input' unless row.length == (rows.length + 1)
    rows << row
  end

  def traverse
    throw 'No setup' if rows.length == 0
    @paths = [[rows[0][0]]]
    (1..(rows.length-1)).each do |i|
      row = []
      (0..i).each do |j|
        row << prev_path(i, j) + rows[i][j]
      end
      @paths << row
    end
    @paths[-1].max
  end

  def prev_path(i, j)
    return @paths[i-1][0] if j == 0
    return @paths[i-1][j-1] if i == j
    [@paths[i-1][j-1], @paths[i-1][j]].max
  end

  def print
    rows.each { |row| puts row.join(' ') }
  end
end

def split_line(line)
  line.split(' ').map(&:to_i)
end

tt = Triangle.new
tt.add_row([3])
tt.add_row([7, 4])
tt.add_row([2, 4, 6])
tt.add_row([8, 5, 9, 3])
tt.print
puts tt.traverse

t = Triangle.new
File.open('./18/data.txt').read.each_line { |line|
  t.add_row(split_line(line))
}
t.print
puts t.traverse


t67 = Triangle.new
File.open('./18/data67.txt').read.each_line { |line|
  t67.add_row(split_line(line))
}
t67.print
puts t67.traverse


