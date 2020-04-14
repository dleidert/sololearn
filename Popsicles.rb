#!/usr/bin/ruby

siblings = STDIN.gets.chomp.to_i
popsicles = STDIN.gets.chomp.to_i

i = popsicles % siblings
if i == 0 then
  puts "give away"
else
  puts "eat them yourself"
end

# vim: set ts=2 sw=2 ai si et:
