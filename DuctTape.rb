#!/usr/bin/ruby

h, w = STDIN.read.chomp.split("\n").map { |i| i.to_i }

area = 2 * (h * w * 12**2)
duct = 60 * 12 * 2

puts (area.to_f / duct.to_f).ceil

# vim: set ts=2 sw=2 ai si et:
