#!/usr/bin/ruby

card = STDIN.gets.chomp

if card.length != 16
  puts 'valid'
  return
end

sum = 0

luhn = card.reverse
luhn.each_char.with_index do |s ,i|
  n  = s.to_i
  n *= 2 if i % 2 == 1
  n -= 9 if n > 9
  sum += n
end

if sum % 10 == 0
  puts 'valid'
else
  puts 'not valid'
end

# vim: set ts=2 sw=2 ai si et:
