# require_relative 'lib/travel_company'
 require_relative 'customer'
# require_relative 'lib/locations'


class Main
  class Config
    def self.default_file_path
      File.absolute_path(".")
    end
    @@actions = ['quit']
    def self.actions; @@actions; end
  end


  def initialize
    Customers.filepath = Config.default_file_path
    if Customers.file_usable?
      puts "Found"
    elsif Customers.create_file
      puts "File Created"
    else
      puts "Create failed"
      exit!

    end
  end

  def loop!
    result = nil
    until result == :quit
      action, args = get_action
      result = do_action(action, args)
    end
    conclusion
  end

  def do_action(action, args=[])
    case action
    when "quit"
      return :quit
    else
      puts "error"
    end
  end

  def conclusion
    puts "\n\nHave a nice trip\n\n\n"
  end

  def get_action
    action = nil
    # Keep asking for user input until we get a valid action
      until Main::Config.actions.include?(action)
        puts "Actions: " + Main::Config.actions.join(", ")
        print "> "
        user_response = gets.chomp
        args = user_response.downcase.strip.split(' ')
        #action =
        action = user_response.downcase.strip
        # end
      return action, args
    end
  end
end




guide = Main.new
guide.loop!



  #   def self.run
  #     panama  = Trip.new('Panama', '3 weeks', 5_000)
  #     ascension = Trip.new('Ascension', '3 weeks', 10_000)
  #     baja    = Trip.new('Baja', '3 weeks', 3_000)
  #     tirps = [panama, ascension, baja]
  #     buyer   = Customer.new('anonymous', 50_000_000)
  #     spear_adventure = TravelCompany.new(sales, trip, )
  #     return buyer, travel_company
  #   end
  # end
