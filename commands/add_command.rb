class AddCommand < Command
  def perform
    new_trip = Trip.new(location, lenth, price.to_i)
    travel_company.listing(new_trip)
    "Added a new trip #{travel_company.name}: #{new_trip}"
  end
end
