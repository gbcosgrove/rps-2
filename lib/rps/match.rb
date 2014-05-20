class RPS::Match

attr_reader :id, :winner, :player1, :player2

  def initialize(args)
    @id = args[:id]
    @player1 = args[:player1] || "Player 1"
    @player2 = args[:player2] || "Player 2"
    @winner = args[:winner] || nil
  end

end
