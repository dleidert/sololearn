#!/usr/bin/ruby

string = STDIN.gets.chomp

substr = string[/\$[^T]*T/] ? string[/\$[^T]*T/] : string[/T[^\$]*\$/]
exit unless substr

if substr.include?('G') then
  puts "quiet"
else
  puts "ALARM"
end

# vim: set ts=2 sw=2 ai si et:
