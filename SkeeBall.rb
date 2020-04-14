#!/usr/bin/ruby

points = STDIN.gets.chomp.to_i
cost = STDIN.gets.chomp.to_i

tickets = points / 12

if tickets >= cost
  puts 'Buy it!'
else
  puts 'Try again'
end

# vim: set ts=2 sw=2 ai si et:
