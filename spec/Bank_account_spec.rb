require "./lib/Bank_Account"
require 'pry'
describe Bank_account do

  context "creation:"
  it "initialises with a current account value of 0" do
    account = Bank_account.new()
    expect(account.balance).to eq(0)
  end



context "deposits:" do

  it "can deposit money into the account" do
    account = Bank_account.new()
    account.deposit(10)
    expect(account.balance).to eq(10)
  end
  let!(:time) {Time.new(2002, 10, 31)}

  it "has a timestamp for the deposit" do
    account = Bank_account.new()
    account.deposit(10, time)
    expect(account.date).to include({"deposit"=>[time, "£10"]})
  end

  it "can see that the transaction is a deposit" do
    account = Bank_account.new()
    account.deposit(10, time)
    expect(account.date).to include("deposit")
  end
end
end
