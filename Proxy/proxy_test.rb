#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'account'
require_relative 'proxy'

class ProxyAccountTest < Minitest::Test
  def test_proxy
    ba = BankAccount.new(100)
    proxy = BankAccountProxy.new(ba)

    assert_equal 100, ba.balance
    assert_equal 100, proxy.balance

    assert_equal 200, proxy.deposit(100)
    assert_equal 200, ba.balance
    assert_equal 200, proxy.balance

    assert_equal 180, proxy.withdraw(20)
    assert_equal 180, ba.balance
    assert_equal 180, proxy.balance
  end
end
