require_relative '../main'

describe Account do
  it "defaults to no money" do
    a = Account.new
    expect(a.amount).to eq(0)
  end
end
