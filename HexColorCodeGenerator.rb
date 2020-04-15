#!/usr/bin/ruby

def get_hex_value(value)
  case value
  when 0..9 then value.to_s
  when 10 then 'a'
  when 11 then 'b'
  when 12 then 'c'
  when 13 then 'd'
  when 14 then 'e'
  when 15 then 'f'
  else raise "This shouldn't happen."
  end
end

rgb = STDIN.read.chomp.split("\n")

hex = Array.new
rgb[0..2].each do |color|
  code = color.to_i
  hex << get_hex_value(code / 16)
  hex << get_hex_value(code % 16)
end

puts '#' + hex.join


# vim: set ts=2 sw=2 ai si et:
