#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'
require 'stringio'

require_relative 'strategy'

class FormatterTest < Minitest::Test
  def test_html_report
    r = Report.new(HTMLFormatter.new)

    output = capture_output { r.output_report }
    assert /<html>/ =~ output
    assert /<title>Monthly/ =~ output
    assert /<p>Things/ =~ output
  end

  def test_plain_report
    r = Report.new(PlainTextFormatter.new)

    output = capture_output { r.output_report }
    assert /Monthly/ =~ output
    assert /Things/ =~ output
  end

  def capture_output(&block)
    output = StringIO.new
    begin
       $stdout = output
       block.call
    ensure
       $stdout = STDOUT
    end
    output.string
  end

end
