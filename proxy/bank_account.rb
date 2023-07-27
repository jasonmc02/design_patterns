class BankAccount
  attr_reader :balance

  def initialize(starting_balance = 0)
    @balance = starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

# account = BankAccount.new(100)
# proxy = AccountProtectionProxy.new(account, "Joe")
# proxy.deposit(50)
# proxy.withdraw(10)
# proxy.balance
# proxy = AccountProtectionProxy.new(account, "John")
# proxy.balance
