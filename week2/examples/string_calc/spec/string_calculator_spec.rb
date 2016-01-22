require_relative("../lib/string_calculator.rb")


RSpec.describe "String Calculator" do 
	it "returns 0 for the empty string" do
		my_calc = StringCalculator.new
		expect(my_calc.add("")).to eq(0) 
	end
	it "returns the number for one number" do
		my_calc = StringCalculator.new
		expect(my_calc.add("5")).to eq(5) 
	end
	it "returns the sum of numbers" do
		my_calc = StringCalculator.new
		expect(my_calc.add("4, 7")).to eq(11) 
	end
end