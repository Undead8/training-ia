class Client
  attr_reader :name, :birthday

  def initialize(name, birthday)
    @name = name
    @birthday = birthday
  end

  def age
    today = Date.today
    age = today.year - @birthday.year
    age -= 1 if today.month < @birthday.month or today.month == @birthday.month && today.day < @birthday.day
    return age
  end
end

class Contract
  attr_reader :premium, :client

  def initialize(client, premium)
    @client = client
    @premium = premium
  end

  def monthly_payment
    payment = @premium * (0.00025 * @client.age - 0.0090)
    return payment.round(2)
  end
end
