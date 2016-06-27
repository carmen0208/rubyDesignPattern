#!/usr/bin/env ruby

require_relative "../example"
require_relative "employee"

example %q{
payroll = Payroll.new
carmen = Employee.new("Carmen Ninja Liu", "Ninja of the World", 1000000.0, payroll)

#Give Carmen a raise.

carmen.salary = 7000000.0
}
