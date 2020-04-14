#!/usr/bin/ruby

colors = STDIN.gets.chomp.to_i

canvas_cost = 40.00
color_cost  = 5.00
tax    = 0.1

total  = canvas_cost + colors * color_cost
total += total * tax

puts total.ceil

# vim: set ts=2 sw=2 ai si et:
