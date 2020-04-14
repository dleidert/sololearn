#!/usr/bin/ruby

signs = STDIN.read.chomp.split("\n")

palindrom = false

signs.each do |sign|
  sign.upcase!
  if sign == sign.chars.reverse.join
    palindrom = true
    break
  end
end

if palindrom
  puts 'Open'
else
  puts 'Trash'
end

# vim: set ts=2 sw=2 ai si et:
