require_relative ("../lib/checker.rb")

RSpec.describe PasswordChecker do 

	before :each do
		test = PasswordChecker.new
		# @correct = test.check_password("aeeng@gmail.com", "Julian1995!")
		@wrong = test.check_password("Julian1995@hershey.com", "Josh54!")
		# @wrong2 = test.check_password("ana@e.e.e.e.e.e.e.e.e.e.co.uk", "aAa11a1!!!")
	end

	it "checks if email and password are correct" do
		expect(@wrong).to eq(true)
		# expect(@wrong2).to eq(false)

	end

end