#!/usr/bin/env ruby

require_relative '../example'

require_relative 'simple_writer'

example %q{
w = SimpleWriter.new('out')

class << w
  alias old_write_line write_line
  def write_line(line)
    old_write_line("#{Time.new}: #{line}")
  end
end

w.write_line("hello with a timestamp")
}
