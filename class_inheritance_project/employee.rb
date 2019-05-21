class Employee
  attr_reader :name, :title, :salary, :boss
  def initialize(name, salary, title, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = nil
    @subordinates = []
  end

  def bonus(multiplier)
    @salary * multiplier
  end

  def boss=()
    @boss
  end

  def subordinates=(emp_instance)
    @subordinates << emp_instance
  end

  def get_sub_salaries
    salaries = subordinates.map do |emp_instance|
      emp_instance.salary
    end
    salaries.sum
  end
end

ned = Employee.new("Ned", 1000, "Founder", nil)
darren = Employee.new("Darren", 78, "TA Manager", "Ned")
shawna = Employee.new("Shawna", 12, "TA", "Darren")
david = Employee.new("David", 10, "TA", "Darren")

# p employee1
# p employee2
# p employee3
# p employee4

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000