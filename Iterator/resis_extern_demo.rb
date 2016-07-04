#!/usr/bin/env ruby

require_relative '../example'

example %q{

puts "when delete the array, it can be shown correctly -- blue is missing"

array=['red', 'green', 'blue', 'purple']

array.each do | color |
  puts color
  if color == 'green'
    array.delete(color)
  end
end

}
