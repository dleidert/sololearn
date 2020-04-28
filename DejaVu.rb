#!/usr/bin/ruby

str = STDIN.gets.chomp

l = str.length - 1

for c in 0..l
  return puts 'Deja Vu' if str[c] == str[c+1]
end

puts 'Unique'

# vim: set ts=2 sw=2 ai si et:
