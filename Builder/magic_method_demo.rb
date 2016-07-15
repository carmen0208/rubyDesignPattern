#!/usr/bin/env ruby

require_relative '../example'
require 'pp'

require_relative 'computer'
require_relative 'computer_builder'
require_relative 'magic_method'

example %q{
builder = ComputerBuilder.new
builder.add_dvd_and_harddisk

pp builder.computer
puts

builder = ComputerBuilder.new
builder.add_turbo_and_dvd_and_harddisk

pp builder.computer
}
