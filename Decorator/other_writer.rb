require File.expand_path(File.dirname(__FILE__) + '/simple_writer')

class CheckSummingWriter < WriterDecorator
  attr_reader :check_sum

  def initialize(real_writer)
    super(real_writer)
    @check_sum = 0
  end

  def write_line(line)
    line.each_byte {|byte| @check_sum = (@check_sum + byte) % 256 }
    # @check_sum = (@check_sum + "\n"[0]) % 256
    @real_writer.write_line(line)
  end
end

class NumberingWriter < WriterDecorator
  def initialize(real_writer)
    super(real_writer)
    @line_number = 1
  end

  def write_line(line)
    @real_writer.write_line("#{@line_number}: #{line}")
    @line_number += 1
  end
end

class TimeStampingWriter < WriterDecorator

  def write_line(line)
    @real_writer.write_line("#{Time.new}: #{line}")
  end
end
