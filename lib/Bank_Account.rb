require "./lib/Bank_statement"

class Bank_account
  attr_reader :balance, :date, :statement
  def initialize(balance = 0)
    @balance = balance
    @statement = Bank_statement.new
  end

  def deposit(amount, time = Time.new(2017, 1, 23))
    @amount = amount
    @balance += amount
    @time = time.strftime "%y/%m/%d"
    @statement.transactions.push("#{@time}|| £#{@amount} ||    || £#{@balance}\n")
  end

  def withdraw(amount, time = Time.new(2017, 1, 23))
    @amount = amount
    @balance -= amount
    @time = time.strftime "%y/%m/%d"
    @statement.transactions.push("#{@time}||    || £#{@amount} || £#{@balance}\n")
  end
end
