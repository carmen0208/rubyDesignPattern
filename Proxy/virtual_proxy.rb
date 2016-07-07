#require File.expand_path(File.dirname(__FILE__) + '/account')


class VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block= creation_block
  end

  def deposit(amount)
    s = subject
    s.deposit(amount)
  end

  def withdraw(amount)
    s = subject
    s.withdraw(amount)
  end

  def balance
    s = subject
     s.balance
  end
  def subject
    # puts @start_balance
    @subject || (@subject = @creation_block.call)
  end
end
