#!/usr/bin/env ruby
require_relative '../example'

example %q{


#
# A service to aid the numerically challenged.
#
class MathServer
  def add(a,b)
    a + b
  end
end

require 'drb/drb'

math_service = MathServer.new
DRb.start_service("druby://localhost:3030", math_service)
DRb.thread.join

}
