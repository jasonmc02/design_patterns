require "etc"
require "./bank_account.rb"

class AccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject  = real_account
    @owner_name = owner_name
  end

  def deposit(amount)
    check_access
    @subject.deposit(amount)
  end

  def withdraw(amount)
    check_access
    @subject.withdraw(amount)
  end

  def balance
    check_access
    @subject.balance
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end
end

account = BankAccount.new(100)
proxy = AccountProtectionProxy.new(account, "jmelendezcastro")
proxy.deposit(50)
proxy.withdraw(10)
puts proxy.balance
proxy = AccountProtectionProxy.new(account, "Joe")
puts proxy.balance
