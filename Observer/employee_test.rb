#!/usr/bin/env ruby

require 'minitest/autorun'
require 'stringio'
require 'pp'

require_relative 'employee'

class SubjectClassTest < Minitest::Test
  def test_add_delete
    subject = Employee.new('carmen',"ninja",20000)
    subject1=[]
    subject2=[]


    observer1 = lambda {|s| subject1 << s}

    subject.add_observer(&observer1)
    subject.salary = 50000
    assert_equal 1,  subject1.size
    assert_equal subject,  subject1[0]

    observer2 = lambda {|s| subject2 << s}
    subject.add_observer(&observer2)
    subject.salary = 300000
    assert_equal 2, subject1.size
    assert_equal 1, subject2.size

    subject.delete_observer(&observer2)
    subject.salary = 900000
    assert_equal 3, subject1.size
    assert_equal 1, subject2.size
  end

  def test_employee
    fred = Employee.new('fred', 'title', 1000 )
    subjects = []

    # observer = TestObserver.new
    # assert observer.subjects.empty?

    fred.add_observer { |s| subjects << s }
    fred.salary = 2000
    fred.notify_observers
    assert_equal 2000, subjects[0].salary
  end
end

# class TestObserver
#   attr_reader :subjects
#
#   def initialize
#     @subjects = []
#   end
#
#   def update(subject)
#     @subjects << subject
#   end
# end
