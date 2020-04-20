#!/usr/bin/ruby

ah, aw = STDIN.gets.chomp.split(',').map { |i| i.to_i }
bh, bw = STDIN.gets.chomp.split(',').map { |i| i.to_i }

if (ah * aw) > (bh * bw)
  puts 'Apartment A'
else
  puts 'Apartment B'
end

# vim: set ts=2 sw=2 ai si et:
