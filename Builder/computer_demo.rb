#!/usr/bin/env ruby

require_relative '../example'

require_relative 'computer'

example %q{
motherboard = Motherboard.new(TurboCPU.new, 4000)

drives = []
drives << Drive.new(:hard_drive, 200000, true)
drives << Drive.new(:cd, 760, true)
drives << Drive.new(:dvd, 4700, false)

computer = Computer.new(:lcd,motherboard,drives)

pp computer
}
