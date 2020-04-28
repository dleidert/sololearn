#!/usr/bin/ruby

str = STDIN.read.chomp.split("\n")

out = Array.new
str.each do |c|
  if c.to_i % 3 == 0
    out << 'Pop'
  elsif c.to_i.odd?
    out << 'Snap'
  else
    out << 'Crackle'
  end
end

puts out.join(' ')

# vim: set ts=2 sw=2 ai si et:
