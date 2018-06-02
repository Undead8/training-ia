class RandomGenerator

  def self.random_date
    rand(Date.today.prev_year(100)..Date.today.prev_year(50))
  end

  def self.random_clients(list_of_names, number = 600)
    list_of_names.shuffle.take(number).map { |n| Client.new(n, random_date) }
  end


  def self.random_contracts(list_of_clients)
    list_of_clients.map { |c| Contract.new(c, rand(10000..1000000))}
  end
end
