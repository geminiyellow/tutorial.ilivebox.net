class Customer
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def buy(ticket)
    ticket.sell(self)
  end
end

class Ticket
  attr_reader :buyers

  def initialize(name, price)
    @name = name
    @price = price
    @buyers = []
  end

  def sell(customer)
    @buyers.push(customer)
  end

  def total_sales
    @price * @buyers.size
  end
end

yamada = Customer.new('Taro Yamada')
kawada = Customer.new('Jiro Kawada')
oakada = Customer.new('Saburo Okada')

mozart = Ticket.new('Piano Concerto No.24', 5000)
wagner = Ticket.new('Tristan und Isolde', 10000)

yamada.buy(mozart)
kawada.buy(wagner)
oakada.buy(wagner)
wagner.sell(yamada)
mozart.sell(oakada)

for customer in wagner.buyers
  puts customer.name
end

puts wagner.total_sales
