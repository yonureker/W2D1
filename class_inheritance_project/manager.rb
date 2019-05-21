require_relative "employee"

class Manager < Employee
  def bonus
    get_sub_salaries * multiplier
  end
end