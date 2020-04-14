#!/usr/bin/ruby

input = gets.chomp.to_s

prices = input.split(',').map { |p| p.to_f }

sum = 0.0
prices.each do |price|
  sum += price
  sum += (price * 0.07) unless price >= 20.0
end

puts sum

# vim: set ts=2 sw=2 ai si et:
