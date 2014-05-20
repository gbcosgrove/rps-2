require 'spec_helper.rb'

describe "Match" do
  it "exists" do
    expect(Match).to be_a(Class)
  end

  it "initializes with default values" do
    match = RPS::Match.new({:id=>1})
    expect(match.id).to eq(1)
    expect(match.player1).to eq("Player 1")
    expect(match.player2).to eq("Player 2")
    expect(match.winner).to eq(nil)
  end

end
