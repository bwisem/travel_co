

class Customers

  @@filepath = nil
  def self.filepath=(path=nil)
    @@filepath = path
  end

  def self.file_usable?
    @@filepath && File.exists?(@@filepath)    
  end

  def self.create_file
    File.open(@@filepath, 'w') unless file_exists?
    return file_usable?
  end

  def self.saved_customers
    customers = []
    if file_usable?
      file = File.new(@@filepath, 'r')
      file.each_line do |line|
        customer << Customers.new.import_line(line.chomp)
      end
      file.close
    end
    return customers
  end

  def self.build_using_customer_attrabutes
    args = {}
    print "Name: "
    args[:given_name] = gets.chomp.strip

    print "Last Name: "
    args[:family_name] = gets.chomp.strip

    print "Address: "
    args[:address_line_1] = gets.chomp.strip

    print "Address: "
    args[:address_line_2] = gets.chomp.strip

    print "City: "
    args[:locality] = gets.chomp.strip

    print "State: "
    args[:administrative_district_level_1] = gets.chomp.strip

    print "Zip Code: "
    args[:postal_code] = gets.chomp.strip

    print "Country: "
    args[:country] = gets.chomp.upcase.strip

    print "Phone Number: "
    args[:phone_number] = gets.chomp.strip

    print "Notes: "
    args[:note] = gets.chomp.strip

    return self.new(args)
  end

  def initialize(args = {})
    @given_name   = args[:given_name]                      || ""
    @last_name    = args[:family_name]                     || ""
    @address      = args[:address_line_1]                  || ""
    @address2     = args[:address_line_2]                  || ""
    @city         = args[:locality]                        || ""
    @state        = args[:administrative_district_level_1] || ""
    @zip          = args[:postal_code]                     || ""
    @country      = args[:country]                         || ""
    @phone_number = args[:phone_number]                    || ""
    @note         = args[:note]                            || ""
  end

  def import_line(line)
    line_array = line.split("\t")
    @given_name, @last_name, @address, @address2, @city, @zip, @country, @phone_number, @note = line_array
    return self
  end

  def save
    return false unless Customers.file_usable?
    File.open(@@filepath, 'a') do |file|
      file.puts "#{[@given_name, @last_name, @address, @address2, @city, @zip, @country, @phone_number, @note]}"
    end
    return true
  end

end






  # def person
  #   build_using_customer_attrabutes()
  #   person = {
  # given_name:  @given_name,
  # family_name:  @last_name,
  # email_address:  @email_address,
  # address: {
  #   address_line_1: @address,
  #   address_line_2: @address2,
  #   locality: @city,
  #   administrative_district_level_1: @state,
  #   postal_code: @zip,
  #   country: @country
  # },
  # phone_number: @phone_number,
  # note: @no
  # }
  # end

#takes customer info and writes to file








#   attr_accessor :trip, :trip_total, :account
#   attr_reader :name
#
#   def initialize(name, amount=0)
#     @name = name
#     @trip_total = 0
#     @trip = Trip.new
#     @account = Account.new(amount)
#   end
# end
