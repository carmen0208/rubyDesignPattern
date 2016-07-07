#require File.expand_path(File.dirname(__FILE__) + '/account')


class VirtualAccountProxy
  def initialize(starting_balance=0)
    @starting_balance=starting_balance
  end

  def deposit(amount)
    s = subject
    return s.deposit(amount)
  end

  def withdraw(amount)
    s = subject
    return s.withdraw(amount)
  end

  def balance
    s = subject
    return s.balance
  end
  def subject
    # puts @start_balance
    @subject || (@subject = BankAccount.new(@starting_balance))
  end
end
