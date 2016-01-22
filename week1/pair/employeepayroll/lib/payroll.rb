class Payroll
    def initialize(employees)
        @employees = employees
    end

    def notify_employee(employee)
      puts "#{employee.name}, we sent you an email to #{employee.email} with your paycheck.\n "
    end

    def pay_employees
      weekly_payroll = @employees.reduce(0) { | sum, employee | 
      	puts "#{employee.name}'s salary is $#{employee.calculate_salary} per week."
      	notify_employee(employee)
      	sum + employee.calculate_salary 
      }

      puts "\nThe total payroll is $#{weekly_payroll} per week."

      weekly_taxes = weekly_payroll * 0.18
 
      puts "\nTaxes are $#{weekly_taxes} per week."

      puts "The total payroll including taxes is $#{weekly_taxes + weekly_payroll} per week.\n "
    end
end
