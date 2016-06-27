#!/usr/bin/env ruby

require_relative "../example"
require_relative "employee"

example %q{

carmen = Employee.new("Carmen Ninja Liu", "Ninja of the World", 1000000.0)


carmen.add_observer do |changed_employee|
    puts "Cut a new check for #{changed_employee.name}!"
    puts "His salary is now #{changed_employee.salary}!"
end

carmen.salary = 7000000.0


}
