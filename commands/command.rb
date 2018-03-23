class Command
  def self.from(command, args)
    klass = Commands::COMMAND_MAP.fetch(command.to_s.to_sym)
    return klass.new(command, args)
  end

  attr_reader :command, :args, :trip, :length, :price, :spear_adventure, :buyer
  def initialize(command, args)
    @command, @args = command, args
    extract_args!
  end

  def perform
    ''
  end

  private
  def extract_args
    @trip, @length, @price, @spear_adventure, @buyer = args.fetch_values(:trip, :length, :price, :spear_adventure, :buyer)
  end
end
