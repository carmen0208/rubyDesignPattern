#!/usr/bin/env ruby
require_relative '../example'

example %q{
require 'drb/drb'

DRb.start_service
math_service = DRbObject.new_with_uri("druby://localhost:3030")
sum = math_service.add(2,2)
puts "The SUM is #{sum}"

}
