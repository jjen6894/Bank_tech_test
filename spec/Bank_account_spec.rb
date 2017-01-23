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

    it "has a timestamp for the deposit" do
      @account.deposit(10, time)
      expect(@account.date).to include({"deposit"=>[time, "£10"]})
    end

    it "can see that the transaction is a deposit" do
      @account.deposit(10, time)
      expect(@account.date).to include("deposit")
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

    it "has a timestamp of the withdrawal" do
      expect(@account.date).to include("withdrawal"=>[time, "£50"])
    end
    it "can see the type of transaction is a withdrawal" do
      expect(@account.date).to include("withdrawal")
    end
  end
end
