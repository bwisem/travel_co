class SellCommand < Command
  def perform
    trip = travel_company.sell_a_trip(buyer, "#{trip} #{length}")
    "Trip sold from #{travel_company.name}: #{trip}"
  end
end
  
