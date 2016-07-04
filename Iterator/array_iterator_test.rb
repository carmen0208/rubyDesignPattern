#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'array_iterator'

class ArrayIteratorTest < Minitest::Test
  def text_iterator
    array = ['carmen','lizzy','ccc']
    i = ArrayIterator.new(array)

    assert_equal('carmen', i.item)
    assert_equal( 'carmen', i.next_item )
    assert i.has_next?

    assert_equal( 'lizzy', i.item )
    assert_equal( 'lizzy', i.next_item )
    assert i.has_next?

    assert_equal( 'ccc', i.item )
    assert_equal( 'ccc', i.next_item )
    assert (not i.has_next?)
  end

  def test_empty_array_iterator
    array = []
    i = ArrayIterator.new(array)
    assert (not i.has_next?)
  end
end
