#!/usr/bin/env ruby
require_relative '../example'
require_relative 'virtual_proxy'
require_relative 'account'

example %q{
  #an example of the instance is changed to be a virtual proxy instead of the real one
account = VirtualAccountProxy.new {BankAccount.new}

puts account
}
