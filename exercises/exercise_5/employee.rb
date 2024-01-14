class Employee
  attr_accessor :name, :position
  private attr_accessor :salary
  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end
  def details
    "Name: #{@name}, Position: #{@position}"
  end
  
  def is_paid_less_than?(other_employee)
    @salary < other_employee.instance_variable_get(:@salary)
  end
end

employee1 = Employee.new("John Doe", "Developer", 70000)
employee2 = Employee.new("Jane Smith", "Manager", 80000)
employee1.is_paid_less_than?(employee2)