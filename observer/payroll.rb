class Payroll
  def update(changed_employee)
    puts "Cut a new check for #{changed_employee.name}"
    puts "His salary now is #{changed_employee.salary}"
  end
end
