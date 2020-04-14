#!/usr/bin/ruby

order = STDIN.gets.chomp

arr = order.split(' ')

sum = 0.0

arr.each do |item|
  case item
  when 'Nachos', 'Pizza' then sum += 6.00
  when 'Cheeseburger' then sum += 10.00
  when 'Water' then sum += 4.00
  else sum += 5.00
  end
end

total = sum + sum*0.07
puts total.round(2)

# vim: set ts=2 sw=2 ai si et:
