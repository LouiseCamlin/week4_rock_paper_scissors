class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    if @player1 == "rock" && @player2 == "scissors"
      return "Rock!"
    elsif @player1 == "paper" && @player2 == "rock"
      return "Paper!"
    elsif @player1 == "scissors" && @player2 == "paper"
      return "Scissors!"
    elsif @player1 == "rock" && @player2 == "paper"
      return "Paper!"
    elsif @player1 == "paper" && @player2 == "scissors"
      return "Scissors!"
    elsif @player1 == "scissors" && @player2 == "rock"
      return "Rock!"
    else 
      return "Nobody! Try again..."
    end
  end



end