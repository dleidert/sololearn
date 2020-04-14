#!/bin/ruby

input = STDIN.gets.chomp

arr = input.split(' ')
arr.map { |w| w.strip! }

piglatin = arr.map do |word|
  word = word[1,word.length] + word[0] + 'ay'
end

puts piglatin.join(' ')
 
# vim: set ts=2 sw=2 ai si et:
