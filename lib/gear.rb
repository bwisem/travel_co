
class Gear
  @@actions = ['yes', 'no']
  def self.actions; @@actions; end
end
#this is where the customer is allowed to select what gear they need.
def get_action
  action = nil
  user_response = gets.chomp
  args = user_response.downcase.strip.split(' ')
  action = user_responsedowncase.sell_a_trip
  return action, args
end

def need_gear(action, args=[])
  case action
  when 'Yes'
    gear_options
  when 'No'
    puts "okay"
    unless
      puts "I don't understand my options are Yes or No"
      #rescue
      #  puts "I don't understand"
    end
  end
end
