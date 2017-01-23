require "./lib/Bank_Account"
require 'pry'
describe Bank_account do

  context "creation:"
  it "initialises with a current account value of 0" do
    account = Bank_account.new()
    expect(account.balance).to eq(0)
  end



  context "deposits:" do
    before do
      @account = Bank_account.new()
    end

    it "can deposit money into the account" do
      @account.deposit(10)
      expect(@account.balance).to eq(10)
    end

    let!(:time) {Time.new(2002, 10, 31)}

    it "has a datestamp for the deposit" do
      @account.deposit(10, time)
      expect(@account.statement.transactions[1]).to include("02/10/31|| £10 ||    || £10\n")
    end

  end

  context("withdraw:") do

    let!(:time) {Time.new(2002, 10, 31)}

    before do
      @account = Bank_account.new(100)
      @account.withdraw(50, time)
    end

    it "can withdraw from the account" do
      expect(@account.balance).to eq(50)
    end

    it "has a timestamp of the withdrawal in table form" do
      expect(@account.statement.transactions[1]).to include("02/10/31||    || £50 || £50\n")
    end

  end
end
