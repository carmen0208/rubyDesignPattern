require 'find'

class FileName
  def initialize(pattern)
    @pattern = pattern
  end

  def evaluate(dir)
    results =[]
    Find.find(dir) do |p|
      next unless File.file?(p)
      name = File.basename(p)
      results << p if File.fnmatch(@pattern, name)
    end
    results
  end
end

class All
 def evaluate(dir)
   results= []
   Find.find(dir) do |p|
     next unless File.file?(p)
     results << p
   end
   results
 end
end

class Not
 def initialize(expression)
   @expression = expression
 end

 def evaluate(dir)
   All.new.evaluate(dir) - @expression.evaluate(dir)
 end
end

class Bigger
 def initialize(size)
   @size = size
 end

 def evaluate(dir)
   results = []
   Find.find(dir) do |p|
     next unless File.file?(p)
     results << p if( File.size(p) > @size)
   end
   results
 end
end

class Writable
 def evaluate(dir)
   results = []
   Find.find(dir) do |p|
     next unless File.file?(p)
     results << p if( File.writable?(p) )
   end
   results
 end
end

class Or
 def initialize(expression1, expression2)
   @expression1 = expression1
   @expression2 = expression2
 end

 def evaluate(dir)
   result1 = @expression1.evaluate(dir)
   result2 = @expression2.evaluate(dir)
   (result1 + result2).sort.uniq
 end
end

class And 
 def initialize(expression1, expression2)
   @expression1 = expression1
   @expression2 = expression2
 end

 def evaluate(dir)
   result1 = @expression1.evaluate(dir)
   result2 = @expression2.evaluate(dir)
   (result1 & result2)
 end
end
