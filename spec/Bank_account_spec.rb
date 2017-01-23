require "./lib/Bank_Account"
require 'pry'
describe Bank_account do

  it "initialises with a current account value of 0" do
    account = Bank_account.new()
    expect(account.balance).to eq(0)
  end

  it "can deposit money into the account" do
    account = Bank_account.new()
    account.deposit(10)
    expect(account.balance).to eq(10)
  end
end
