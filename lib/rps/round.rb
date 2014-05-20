class RPS::Round

attr_reader :id, :match_id, :player_1_move, :player_2_move, :winner

  def initialize(id, match_id, player_1_move, player_2_move, winner)
    @id = id
    @match_id = match_id
    @player_1_move = player_1_move
    @player_2_move = player_2_move
    @winner = winner
  end

end
