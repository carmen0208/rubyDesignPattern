#!/usr/bin/env ruby

require_relative '../example'

example %q{


# Don’t do this!!

class Fixnum
  def abs
    return 42
  end
end

puts 79.abs
puts -1234.abs

}
