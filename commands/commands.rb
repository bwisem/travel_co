require '../command'
require_relative '../add_command'
require_relative '../list_command'
require_relative '../sell_command'
require '../rspec'

module Commands
  COMMAND_MAP = {
    add: AddCommand,
    sell: SellCommand,
    list: ListCommand,
    '': Command,
  }
end
  
