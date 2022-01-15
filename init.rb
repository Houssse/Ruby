require_relative "store_application"

StoreApplication.config do |app|

  app.name        = "My Store"
  app.environment = :production
  
  app.admin do |admin|
    admin.email = "admin@mystore.com"
    admin.login = "login"
    admin.send_info_emails_on :mondays
  end

end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login


@items = []
@items << AntiqueItem.new({:price => 101, :weight => 100, :name => "car"})
@items << RealItem.new({:price => 101, :weight => 100, :name => "kettle"})
@items << RealItem.new({:price => 101, :weight => 100, :name => "dishwasher"})

cart = Cart.new("roman")
cart.add_item RealItem.new({:price => 121, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 151, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 101, :weight => 100, :name => "kettle"})
#p cart.all_cars
#p cart.all_kettle