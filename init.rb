require_relative "string"
require_relative "item"
require_relative "item_container"
require_relative "real_item"
require_relative "virtual_item"
require_relative "antique_item"
require_relative "order"
require_relative "cart"


@items = []
@items << AntiqueItem.new({:price => 101, :weight => 100, :name => "car"})
@items << RealItem.new({:price => 101, :weight => 100, :name => "kettle"})
@items << RealItem.new({:price => 101, :weight => 100, :name => "dishwasher"})

cart = Cart.new("roman")
cart.add_item RealItem.new({:price => 121, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 151, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 101, :weight => 100, :name => "kettle"})
p cart.all_cars
p cart.all_kettle