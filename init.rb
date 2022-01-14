require_relative "store_application"

StoreApplication.new

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