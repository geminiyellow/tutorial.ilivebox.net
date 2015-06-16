#Customer が Ticket を買うのをシミュレーション出来るクラスの作成

  - 以下のメインプログラムを実行すると


    yamada = Customer.new("Taro Yamada")
    kawada = Customer.new("Jiro Kawada")
    oakada = Customer.new("Saburo Okada")
    
    mozart = Ticket.new("Piano Concerto No.24", 5000)
    wagner = Ticket.new("Tristan und Isolde", 10000)
    
    yamada.buy(mozart)
    kawada.buy(wagner)
    oakada.buy(wagner)
    wagner.sell(yamada)
    mozart.sell(oakada)
    
    for customer in wagner.buyers
      puts customer.name
    end
    
    puts wagner.total_sales

  - このように表示される
    
    % ruby  consert.rb
    Jiro Kawada
    Saburo Okada
    Taro Yamada
    30000

  - 注意点
    - Customer と Ticket 以外のクラスを作っても 良いです
    - メインプログラムにあるように、Customer が Ticket を買うことも、 Ticket を Customer が買うことも出来ます
    - ファイル名 concert.rb
