class TravelCompany
  attr_accessor :account
  attr_reader :trip, :sales, :name, :length

  def initialize(trip, length, sales, name)
    @tirp = trip
    @length = length
    @sales = sales
    @name = name
    @account = Account.new(0)
  end

def find(location_of_trip)
  self.tirps.find {|t| "#{t.location} #{t.price}" == location_of_trip}
end
