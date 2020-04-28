#!/usr/bin/ruby

str = STDIN.gets.chomp

repl = {
  '0'  => 'zero',
  '1'  => 'one',
  '2'  => 'two',
  '3'  => 'three',
  '4'  => 'four',
  '5'  => 'five',
  '6'  => 'six',
  '7'  => 'seven',
  '8'  => 'eigth',
  '9'  => 'nine',
  '10' => 'ten'
}

out = str.gsub(/\b(?:[0-9]|10)\b/, repl)
puts out

# vim: set ts=2 sw=2 ai si et:
