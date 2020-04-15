#!/usr/bin/ruby

pesos = STDIN.gets.chomp.to_f
dollar = STDIN.gets.chomp.to_f

if pesos*0.02 < dollar
  puts 'Pesos'
else
  puts 'Dollars'
end

# vim: set ts=2 sw=2 ai si et:
