class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end

    def salary_statement
    	"#{@name}'s salary is:"
    end
end