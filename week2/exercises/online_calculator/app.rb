require 'sinatra'
require 'sinatra/reloader' if development?
require_relative('lib/calculator.rb')
require_relative('lib/memory.rb')

memory = Memory.new('public/last_number.txt')


get "/" do
  @saved_number = memory.load_number
  erb(:home)
end

# get "/calculate" do
# 	erb(:results)
# end

post "/calculate" do
    @first = params[:first_number].to_f
    @second = params[:second_number].to_f
    
    operation = params[:operation]
    calc = Calculator.new(@first, @second)

    # @result = calc.send(@operation)
  if operation == "add"
    @result = calc.add
    @op = "+"
  elsif operation == "subtract"
  	@result = calc.subtract
  	@op = "-"
  elsif operation == "divide"
  	@result = calc.divide
  	@op = "/"
  else
    @result = calc.multiply
    @op = "*"
	end
	erb(:result)
end

post "/stored" do
  memory.save(params[:value])
  redirect to('/')
end 
	# @stored_results = params[:stored]
# 	open('public/stored.txt', 'a') do |f|
# 		f.puts "#{@stored_results.to_i} |"
# 			end
# 		@stored_value = IO.read("public/stored.txt")
# 		erb(:stored)
# 	end



