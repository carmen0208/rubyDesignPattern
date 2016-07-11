#!/usr/bin/env ruby

require_relative '../example'

require_relative 'simple_writer'
require_relative 'writer_decorator'
require_relative 'other_writer'

example %q{
writer = NumberingWriter.new(SimpleWriter.new('final.txt'))

writer.write_line('Hello out there')
}

example %q{
writer = TimeStampingWriter.new(NumberingWriter.new(
             CheckSummingWriter.new(SimpleWriter.new('final.txt'))))

writer.write_line('Hello out there')


pp writer
}
