

class Customer
  attr_accessor :trip, :trip_total, :account
  attr_reader :name

  def initialize(name, amount=0)
    @name = name
    @trip_total = 0
    @trip = Trip.new
    @account = Account.new(amount)
  end
end
