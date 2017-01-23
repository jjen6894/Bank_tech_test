class Bank_statement
  attr_reader :transactions

  def initialize
    @transactions = ["date|| credit || debit   || balance\n"]
  end

  def print_statement
    @transactions
  end
end
