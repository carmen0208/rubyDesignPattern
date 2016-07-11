#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'simple_writer'
require_relative 'module_decorator'

class ModuleDecoratorTest < Minitest::Test

  def setup
    File.delete('out') if File.exists?('out')
  end

  def test_simple_writer
    w = SimpleWriter.new('out')
    w.extend(NumberingWriter)
    w.extend(TimeStampingWriter)

    w.write_line('hello')
    w.close

    assert /1: .*: hello\n/ =~ File.read('out')
  end

end
