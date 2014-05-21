class RPS::TerminalClient

  def self.execute

  end

  def self.create_user
    puts "What's your name?"
    name = gets.chomp.capitalize
    result = RPS::CreateNewUser.new.run(name: name)
    if result[:success?]
      puts "Welcome #{name}!"

    elsif !result[:succes?]
      puts "Sorry, I didn't understand that."
      puts "This is your error: #{result[:error]}"
    else
      puts "Something is wrong with the terminal"
    end
  end

  def self.move
    puts "Rock, paper, or scissors?"
    move = gets.chomp.downcase
    result = RPS::UserMove.new.run(move: move)
    if !result[:success?]
      puts "Sorry, I didn't get that."
      puts result[:error]
    else
      puts "Your move was: #{move}"
    end
  end


  end
end
