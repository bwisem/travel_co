class Locations
  attr_accessor :price
  attr_reader :trip, :length
  attr_writer :booked

  def initialize(trip, length, price)
    @trip = trip
    @length = length
    @price = price
    @booked = true
  end

  def to_s
    "#{trip}, #{length}, #{price}"
  end

  def booked?
    @booked
  end
end
