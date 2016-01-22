require_relative("lib/employee.rb")
require_relative("lib/hourly_employee.rb")
require_relative("lib/salaried_employee.rb")
require_relative("lib/multi_payment_employee.rb")
require_relative("lib/payroll.rb")

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
# puts josh.salary_statement
# puts josh.calculate_salary


nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
# puts nizar.salary_statement
# puts nizar.calculate_salary


ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
# puts ted.salary_statement
# puts ted.calculate_salary


# finished iteration 1

anais = HourlyEmployee.new('Anais', 'anaiscorinne@gmail.com', 15, 40)
andres = HourlyEmployee.new('Andres', 'andres@gmail.com', 15, 40)
# puts anais.salary_statement
# puts anais.calculate_salary

# puts andres.salary_statement
# puts andres.calculate_salary

employees = [josh, nizar, ted, anais, andres]
payroll = Payroll.new(employees)

payroll.pay_employees

# payroll.notify_employee(andres)




