class Bank_account
  attr_reader :balance, :date
  def initialize(balance = 0)
    @balance = balance
    @date = {}
  end

  def deposit(amount, time = Time.new(2017, 1, 23))
    @balance += amount
    type = "deposit"
    @date.store(type, [time, "£#{amount}"])
  end

  def withdraw(amount, time = Time.new(2017, 1, 23))
    @balance -= amount
    type = "withdrawal"
    @date.store(type, [time, "£#{amount}"])
  end
end
