#!/usr/bin/ruby

distance, roadrunner, coyote = STDIN.read.chomp.split("\n").map { |f| f.to_f }

if (distance / roadrunner) < ((distance + 50.0) / coyote)
  puts 'Meep Meep'
else
  puts 'Yum'
end

# vim: set ts=2 sw=2 ai si et:
