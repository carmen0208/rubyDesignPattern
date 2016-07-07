class BankAccount
  attr_reader :balance
  def initialize(start_balance = 0)
    @balance = start_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
