#!/usr/bin/ruby

name = STDIN.gets.chomp
workers = STDIN.gets.chomp.to_i
applicants = STDIN.gets.chomp.split(' ')

applicants << name
applicants.sort!

pos = applicants.find_index(name) + 1

if pos % workers == 0
  round = pos / workers
else
  round = (pos / workers) + 1 # part of the next round
end

puts round * 20
