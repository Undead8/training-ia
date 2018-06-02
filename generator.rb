class RandomGenerator

  def self.date
    rand(Date.today.prev_year(100)..Date.today.prev_year(50))
  end

  def self.clients(list_of_names, amount = 1000)
    Array.new(amount) { Client.new(list_of_names.sample, date) }
  end

  def self.contracts(list_of_clients)
    list_of_clients.map { |client| Contract.new(client, rand(10000..1000000))}
  end
end
