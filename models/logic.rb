class Logic

  def self.rock_paper_scissors(player1,player2)
    if player1.downcase == 'rock' && player2.downcase == 'scissors'
        return "Player 1 wins by playing #{player1}"
      elsif player1.downcase == 'rock' && player2.downcase == 'paper'
        return "Player 2 wins by playing #{player2}"
      elsif player1.downcase == player2.downcase
        return "It's a draw"
      elsif player1.downcase == 'scissors' && player2.downcase == 'paper'
        return "Player 1 wins by playing #{player1}"
      elsif player1.downcase == 'scissors' && player2.downcase == 'rock'
        return "Player 2 wins by playing #{player2}"
      elsif player1.downcase == 'paper' && player2.downcase == 'rock'
        return "Player 1 wins by playing #{player1}"
      elsif player1.downcase == 'paper' && player2.downcase == 'scissors'
        return "Player 2 wins by playing #{player2}"
      else
        return "Wrong input, please chose between rock, paper and scissors"
    end
  end
end
