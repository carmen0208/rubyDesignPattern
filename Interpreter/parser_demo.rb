#!/usr/bin/env ruby

require_relative '../example'

require_relative 'files'
require_relative 'parser'


example %q{

parser = Parser.new "and (and(bigger 1024)(filename *.mp3)) writable"
ast = parser.expression


pp ast
}
