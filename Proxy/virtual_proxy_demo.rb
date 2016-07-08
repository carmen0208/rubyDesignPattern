#!/usr/bin/env ruby
require_relative '../example'

require_relative 'virtual_proxy'
require_relative 'account'

# example %q{
#
# account = VirtualAccountProxy.new { BankAccount.new(10) }
#
# pp account
# account.deposit(1)
# pp account
# }
example %q{

array = VirtualAccountProxy.new { Array.new}

array << 'hello'
array << 'out'
array << 'there'
}
