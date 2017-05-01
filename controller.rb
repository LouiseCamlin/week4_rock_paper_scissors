require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative('./models/game.rb')

get "/home" do
  erb(:home)
end

get "/how-to-play" do
  erb(:rules)
end

get "/:player1/:player2" do
  player1 = params[:player1]
  player2 = params[:player2]
  game = Game.new(player1, player2)
  @winner = game.play
  erb(:result)
end
