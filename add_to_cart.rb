require_relative "init"

cart = Cart.new(ARGV.delete_at(0))
ARGV.each do |a|
  @items.each { |i| cart.add_item(i) if a == i.name }
end

cart.save_to_file
cart.read_from_file

