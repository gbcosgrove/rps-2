class RPS::Round

attr_reader :id, :match_id, :winner, :complete, :player_1, :player_2

  def initialize(args)
    @id = args[:id]
    @match_id = args[:match_id]
    @winner = args[:winner] || nil
    @player_1 = args[:player_1]
    @player_2 = args[:player_2]
    @complete = args[:complete]
  end

  def play(move1, move2)
      @player_1_move = player_1_move
      @player_2_move = player_2_move
      if player_1_move == "rock" && player_2_move == "scissors"
        puts "rock wins"
        @winner = "Player 1"
      elsif player_1_move == "rock" && player_2_move == "paper"
        puts "paper wins"
      elsif player_1_move == "paper" && player_2_move == "paper"
        puts "paper wins"
      elsif player_1_move == "paper" && player_2_move == "rock"
        puts "rock wins"
      elsif player_1_move == "paper" && player_2_move == "scissors"
        puts "scissors wins"
      elsif player_1_move == "scissors" && player_2_move == "rock"
        puts "rock wins"
      elsif player_1_move == "scissors" && player_2_move == "paper"
        puts "scissors wins"
      else
        puts "tie game"
      end
  end

end
