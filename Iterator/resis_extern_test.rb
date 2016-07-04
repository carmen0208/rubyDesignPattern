#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

#require_relative 'array_iterator'

require_relative 'copied_array_iterator'

class ChangeResistantArrayIteratorTest < Minitest::Test

  def test_iterator
    array = ['aaa', 'bbb', 'ccc']

    i = CopiedArrayIterator.new(array)

    assert_equal( 'aaa', i.item )
    assert_equal( 'aaa', i.next_item )
    assert i.has_next?

    assert_equal( 'bbb', i.item )
    assert_equal( 'bbb', i.next_item )
    assert i.has_next?

    assert_equal( 'ccc', i.item )
    assert_equal( 'ccc', i.next_item )
    assert (not i.has_next?)

  end

  def test_change_resistance


    array = ['aaa', 'bbb', 'ccc']

    i = CopiedArrayIterator.new(array)

    array.delete('aaa')
    array.delete('bbb')
    array.delete('ccc')

    count = 0
    while i.has_next?
      i.next_item
      count += 1
    end

    assert_equal 3, count

  end
end
