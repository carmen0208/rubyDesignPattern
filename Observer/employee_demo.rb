#!/usr/bin/env ruby

require_relative "../example"
require_relative "employee"

example %q{
payroll = Payroll.new
carmen = Employee.new("Carmen Ninja Liu", "Ninja of the World", 1000000.0, payroll)

carmen.add_observer(payroll)

carmen.salary = 7000000.0


class TaxMan
  def update(changed_employee)
    puts "Send #{changed_employee.name} a new tax bill!"
  end
end

tax_man = TaxMan.new

carmen.add_observer(tax_man)

carmen.salary = 1000000.0

}
