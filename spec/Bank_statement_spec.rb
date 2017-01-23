require "./lib/Bank_statement"
require "./lib/Bank_Account"
require 'pry'
describe Bank_statement do
  let(:bank) {Bank_account.new(100)}
  let(:time) {Time.new(2017, 1, 23)}
   it "initialises with an empty array" do
     bank_statement = Bank_statement.new()
     expect(bank_statement.print_statement).to eq(["date|| credit || debit   || balance\n"])
   end

   it "adds the values to the statement as they are added to the account" do
     bank.deposit(100, time)
     expect(bank.statement.print_statement[0]).to match("17/01/23|| £100 ||    ||£200\n")
   end

end
