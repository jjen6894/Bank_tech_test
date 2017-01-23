require "./lib/Bank_Account"
describe Bank_account do
  it "initialises with a current account value of 0" do
    account = Bank_account.new
    expect(account.balance).to eq(0)
  end
end
