require 'sinatra'
require 'sinatra/reloader' if development?
require_relative('lib/calculator.rb')


get "/" do
  erb(:calculations)
end

get "/calculate" do
	erb(:results)
end



post "/calculate" do
		operation = params[:operation]
    @first = params[:first_number].to_f
    @second = params[:second_number].to_f
    calc = Calculator.new

  if operation == "add"
    @result = calc.add(@first, @second)
    @op = "+"
    # "#{first} + #{second} = #{@result}"
  elsif operation == "subtract"
  	@result = calc.subtract(@first, @second)
  	@op = "-"
    # "#{first} - #{second} = #{@result}"
  elsif operation == "divide"
  	@result = calc.divide(@first, @second)
  	@op = "/"
    # "#{first} / #{second} = #{@result}"
  else
    @result = calc.multiply(@first, @second)
    @op = "*"
    # "#{first} * #{second} = #{@result}"
	end
	erb(:results)
end

post "/stored" do
	@stored_results = params[:stored]
	open('public/stored.txt', 'a') do |f|
		f.puts "#{@stored_results.to_i} |"
			end
		@stored_value = IO.read("public/stored.txt")
		erb(:stored)
	end



