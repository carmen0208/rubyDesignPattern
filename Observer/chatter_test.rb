#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'chatter'

class Observer

  attr_reader :subjects

  def initialize
    @subjects = []
  end

  def update(subject)
    @subjects << subject
  end
end


class LessChattyObserverTest < Minitest::Test

  def test_consistent_changes
    fred = Employee.new("fred", "title", 30000)
    observer = Observer.new
    fred.add_observer(observer)

    fred.salary = 60000
    assert_equal 0, observer.subjects.size

    fred.salary = 'president'
    assert_equal 0, observer.subjects.size

    fred.changes_complete
    assert_equal fred, observer.subjects[0]
  end


end
