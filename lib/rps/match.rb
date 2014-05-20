class RPS::Match

attr_reader :id, :winner, :player1, :player2

  def initialize(id, player1, player2, winner)
    @id = id
    @player1 = player1
    @player2 = player2
    @winner = winner
  end

end
