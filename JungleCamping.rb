#!/usr/bin/ruby

input = STDIN.gets.chomp

noises = { "Grr" => "Lion", "Rawr" => "Tiger", "Ssss" => "Snake", "Chirp" => "Bird" }

arr = input.split(' ')

animals = arr.map { |s| noises[s] }

puts animals.join(' ')

# vim: set ts=2 sw=2 ai si et:
