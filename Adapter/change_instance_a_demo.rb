#!/usr/bin/env ruby

require_relative '../example'

require_relative 'renderer'

example %q{

bto = BritishTextObject.new('hello', 50.8, :blue)

def bto.color
  colour
end

def bto.text
  string
end

# ...

def bto.size_inches
  return size_mm/25.4
end

puts bto.text
puts bto.color
puts bto.size_inches


}
