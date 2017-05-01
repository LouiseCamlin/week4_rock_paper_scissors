require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative('../models/game.rb')

# get "/" do
#   erb(:home)
# end

get "/:player1/:player2" do
  player1 = params[:player1]
  player2 = params[:player2]
  game = Game.new(player1, player2)
  @winner = game.play
  erb(:result)
end
#   return "Rock Wins"
# end

# get "/rock/paper" do
#   return "Paper wins"
# end

# get "/rock/rock" do
#   return "It's a draw!"
# end

# get "/paper/scissors" do
#   return "Scissors wins"
# end

# get "/paper/rock" do
#   return "paper wins"
# end

# get "/paper/paper" do
#   return "It's a draw!"
# end

# get "/scissors/paper" do 
#   return "scissors wins"
# end

# get "/scissors/rock" do
#   return "Rock wins"
# end

# get "/scissors/scissors" do
#   return "It's a draw!"
# end