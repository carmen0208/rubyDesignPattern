#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'
require 'yaml'

require_relative 'account'
require_relative 'virtual_proxy'


class VirtualProxyTest < Minitest::Test
  def test_proxy
    proxy = VirtualAccountProxy.new( 100 )
    assert_nil proxy.instance_variable_get(:@subject)

    assert_equal 100, proxy.balance
    assert proxy.instance_variable_get(:@subject) != nil

    assert_equal 200, proxy.deposit(100)
    assert_equal 200, proxy.balance

    assert_equal 180, proxy.withdraw(20)
    assert_equal 180, proxy.balance
    assert proxy.instance_variable_get(:@subject) != nil
  end
end
