#!/usr/bin/env ruby

require_relative '../example'

require_relative 'enum_portfolio'

example %q{

my_portfolio = Portfolio.new

my_portfolio.add_account(Account.new('Bonds', 200))
my_portfolio.add_account(Account.new('Stocks', 100))
my_portfolio.add_account(Account.new('Real Estate', 1000))

puts my_portfolio.any? {|account| account.balance > 2000}
puts my_portfolio.all? {|account| account.balance >= 10}

}
