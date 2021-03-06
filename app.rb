require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do 
    @number = params[:number]
    @square = @number.to_i * @number.to_i
    @square.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    @result = @phrase * @number.to_i
    @result
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
   if @operation == "add"
    result = (@number1 + @number2).to_s
   elsif @operation == "subtract"
    result = (@number1 - @number2).to_s
   elsif @operation == "multiply"
    result = (@number1 * @number2).to_s
   elsif @operation == "divide"
    result = (@number1 / @number2).to_s
   end
  end

end