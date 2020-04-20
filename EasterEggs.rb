#!/usr/bin/ruby

total, my_basket, friend_basket = STDIN.read.chomp.split("\n").map { |i| i.to_i }

if (my_basket + friend_basket ) < total
  puts 'Keep Hunting'
else
  puts 'Candy Time'
end

# vim: set ts=2 sw=2 ai si et:
