#!/usr/bin/ruby

result = STDIN.gets.chomp.to_i
operations = STDIN.gets.chomp.split(' ')

operations.each_with_index do |op, index|
  if eval(op) == result
    puts "index " + index.to_s
    return
  end
end

puts 'none'

# vim: set ts=2 sw=2 ai si et:
