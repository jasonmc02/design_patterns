class Employee
  include Subject
  
  attr_reader :name, :title
  attr_accessor :salary

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end

# fred = Employee.new("Fred", "Driver", 3000)
# payroll = Payroll.new
# tax_man = TaxMan.new
# fred.add_observer(payroll)
# fred.add_observer(tax_man)
# fred.salary = 3500
