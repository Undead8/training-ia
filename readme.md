
# Interactive console

Start pry and load files `pry -r ./run.rb`\

# Interact with models

Create a client: `joe = Client.new("Joe", Date.new(1960,12,30))`\
Create a contract: `contract_joe = Contract.new(joe, 10000)`\

# Investigate a contract
Contract owner: `contract_joe.client`\
Contract premium: `contract_joe.premium`\
Monthly payment: `contract_joe.monthly_payment`\
Client name: `contract_joe.client.name`\
Client birthday: `contract_joe.client.birthday`\
Client age: `contract_joe.client.age`\

# Generator

Generate clients: `clients_list = RandomGenerator.clients(NAMES600, 10000)`\
Generate contracts: `contracts_list = RandomGenerator.contracts(clients_list)`\
Generate contracts from names: `contracts_list = RandomGenerator.contracts_from_names(NAMES600, 10000)`\

# Investigate contracts

Number of contracts: `contracts_list.count`\
Average premium: `contracts_list.sum { |c| c.premium }.to_f / contracts_list.count`\
Average monthly payment: `contracts_list.sum { |c| c.monthly_payment } / contracts_list.count`\
Oldest client: `contracts_list.map { |c| c.client.age }.sort { |a, b| b <=> a }.first`\
