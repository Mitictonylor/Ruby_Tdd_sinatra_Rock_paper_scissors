require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/logic.rb')
also_reload('./models/*')

get '/add/:num1/:num2' do
  num1 = params['num1'].to_i
  num2 = params['num2'].to_i
  @result = Calculator.add(num1,num2)
  # return "The result is #{result}"
  erb(:result)
end

get '/subtract/:num1/:num2' do
  num1 = params['num1'].to_i
  num2 = params['num2'].to_i
  @result = Calculator.subtract(num1,num2)# @ so it will be avail in the erb file
  # return "The result is #{result}"
  erb(:result)#match the name of the file in the view
end

get '/multiply/:num1/:num2' do
  num1 = params['num1'].to_i
  num2 = params['num2'].to_i
  @result = Calculator.multiply(num1,num2)
  # return "The result is #{result}"
  erb(:result)
end

get '/divide/:num1/:num2' do
  num1 = params['num1'].to_f
  num2 = params['num2'].to_f
  @result = Calculator.divide(num1,num2)
  # return "The result is #{result}"
  erb(:result)
end

get '/' do
  erb(:home)
end

get '/about' do
  erb(:about)
end
