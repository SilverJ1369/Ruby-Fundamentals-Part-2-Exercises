require_relative 'employee.rb'

class Department
  attr_accessor :employees
  private attr_accessor :salary
  def initialize()
    @employees = []
  end
  def add_employee(employee)
    @employees << employee
  end
  def list_employees
    @employees
  end
  def highest_paid_between(employee1, employee2)
    if employee1.instance_variable_get(:@salary) > employee2.instance_variable_get(:@salary)
      employee1
    else
      employee2
    end
  end
  def remove_employee(name)
    @employees.delete_if { |employee| employee.name == name }
  end
    
end
