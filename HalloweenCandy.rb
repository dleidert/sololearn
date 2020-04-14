#!/usr/bin/ruby

houses = STDIN.gets.chomp.to_i
raise ArgumentError.new("Input must be >= 3") unless houses >= 3

prob = 2.0 * 100 / houses.to_f

puts prob.ceil
