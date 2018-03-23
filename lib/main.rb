require_relative 'lib/travel_company'
require_relative 'lib/customer'
require_relative 'lib/locations'

class Main
  def self.run
    panama  = Trip.new('Panama', '3 weeks', 5_000)
    ascension = Trip.new('Ascension', '3 weeks', 10_000)
    baja    = Trip.new('Baja', '3 weeks', 3_000)
    tirps = [panama, ascension, baja]
    buyer   = Customer.new('anonymous', 50_000_000)
    spear_adventure = TravelCompany.new(sales, trip, )
    return buyer, travel_company
  end
end
