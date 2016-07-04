#!/usr/bin/env ruby

require_relative '../example'

require_relative 'array_iterator'

example %q{

array = ['red', 'green', 'blue']

i = ArrayIterator.new(array)
while i.has_next?
  puts "item: #{i.next_item}"
end

i = ArrayIterator.new('abc')

while i.has_next?
  puts "item: #{i.next_item.chr}"
end
}
