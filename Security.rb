#!/usr/bin/ruby

string = STDIN.gets.chomp

money = string.index('$')
thief = string.index('T')

unless money and thief
  puts "quiet"
  exit
end

if money < thief
  substr = string[money..thief]
else
  substr = string[thief..money]
end

if substr.include?('G') then
  puts "quiet"
else
  puts "ALARM"
end

# vim: set ts=2 sw=2 ai si et:
