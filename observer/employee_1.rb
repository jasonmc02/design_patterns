class Employee
  attr_reader :name, :title
  attr_accessor :salary

  def initialize(name, title, salary, payroll)
    @name = name
    @title = title
    @salary = salary
    @payroll = payroll
  end

  def salary=(new_salary)
    @salary = new_salary
    @payroll.update(self)
  end
end

# payroll = Payroll.new
# fred = Employee.new("Fred", "Driver", 3000, payroll)
# fred.salary = 3500
