#!/usr/bin/ruby

pass = STDIN.gets.chomp

if pass.length < 7
  puts 'Weak'
  exit
end

numbers = 0
special = 0

pass.chars.each do |c|
  numbers += 1 if c =~ /[[:digit:]]/
  special += 1 if c =~ /[@!#$%&*]/
end

if numbers >= 2 and special >= 2
  puts 'Strong'
else
  puts 'Weak'
end

# vim: set ts=2 sw=2 ai si et:
