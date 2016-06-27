#!/usr/bin/env ruby

require_relative "../example"
require_relative "employee"

example %q{
carmen = Employee.new("Carmen Ninja Liu", "Ninja of the World", 1000000.0)

#Give Carmen a raise.

carmen.salary = 7000000.0
}
