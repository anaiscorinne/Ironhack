class MultiPaymentEmployee < Employee
    def initialize(name, email, annual_salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @annual_salary = annual_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	(@annual_salary / 52) + ((@hours_worked - 40) * @hourly_rate)
    end
end