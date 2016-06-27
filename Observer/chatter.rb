require 'observer'

class Employee

  include Observable

  attr_reader :name, :address
  attr_reader :salary

  def initialize( name, title, salary)
   @name = name
   @title = title
   @salary = salary
  end

  def salary=(new_salary)
     old_salary = @salary
     @salary = new_salary
     changed if old_salary != new_salary
   end

   def title=(new_title)
     old_title = @title
     @title = new_title
     changed if old_title != new_title
   end

   def changes_complete
     notify_observers(self)
   end

end
