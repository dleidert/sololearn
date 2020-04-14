#!/usr/bin/ruby

items = STDIN.gets.chomp.split(',')
target = STDIN.gets.chomp

time = 0

items.each do |item|
  time += 5
  break if item == target
end

puts time
