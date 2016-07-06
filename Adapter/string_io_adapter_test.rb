#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'encrypter'
require_relative 'string_io_adapter'

class StringIOAdapterTest < Minitest::Test

  def test_normal_string
    string = 'hello out there'
    adapter = StringIOAdapter.new(string)

    index=0
    until adapter.eof?
      assert_equal string[index], adapter.getc
      index += 1
    end

    assert_equal string.length, index
  end

  def test_empty_string
    adapter = StringIOAdapter.new('')
    assert adapter.eof?
  end

  def test_with_encrypter
    encrypter = Encrypter.new('a secret')

    string = 'hello out there'
    adapter = StringIOAdapter.new(string)

    File.open('out', 'w') { |output| encrypter.encrypt(adapter, output) }
    encrypted_string = File.read('out')
    adapter =  StringIOAdapter.new(encrypted_string)
    File.open('out', 'w') { |output| encrypter.encrypt(adapter, output) }
    round_trip_string = File.read('out')
    # assert_equal string, round_trip_string
  end

end
