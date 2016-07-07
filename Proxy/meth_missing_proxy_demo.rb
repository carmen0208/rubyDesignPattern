#!/usr/bin/env ruby
require_relative '../example'

require_relative 'meth_missing_proxy'
require_relative 'account'


example %q{

ap = AccountProxy.new( BankAccount.new(100) )
ap.deposit(25)
ap.withdraw(50)
puts "account balance is now: #{ap.balance}"

}
