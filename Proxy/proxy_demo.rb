#!/usr/bin/env ruby
require_relative '../example'

require_relative 'account'
require_relative 'proxy'

example %{
account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)

proxy = BankAccountProxy.new(account)
proxy.deposit(50)
proxy.withdraw(10)
}
