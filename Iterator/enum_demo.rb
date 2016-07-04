#!/usr/bin/env ruby
#array has impliement enumable , quit a lot of function can be used

require_relative '../example'


example %q{
puts 'array has impliement enumable , quit a lot of function can be used'
a = ['carmen','ninja','soda','k2']
result = a.all? {|element| element.length < 4}
puts result

result = a.any? {|element| element.length < 4}
puts result
}
