require 'spec_helper.rb'

describe "db" do
  it "exists" do
    expect(DB).to be_a(Class)
  end

it "returns a db" do
    expect(RPS.db).to be_a(DB)
  end

  it "is a singleton" do
    db1 = RPS.db
    db2 = RPS.db
    expect(db1).to be(db2)
  end

end

describe "db user" do

    player1 = RPS::db.create_user({:name => "Randy"})
    player2 = RPS::db.create_user({:name => "Queen Bobby"})
    player3 = RPS::db.create_user({:name => "Greg"})
    player4 = RPS::db.create_user({:name => "Zach"})

  it "creates a new user with a name" do
    expect(player1.name).to eq("Randy")
  end

  it "creates a new user with a unique ID" do
    expect(player1.id).to eq(1)
    expect(player2.id).to eq(2)
    expect(player3.id).to eq(3)
    expect(player4.id).to eq(4)
  end

  it "stores users in a hash" do
    expect(RPS::db.users).to be_a(Hash)
  end

  it "retrieves user name by id" do
    expect(RPS::db.retrieve_user(2)).to eq({:name => "Queen Bobby", :id => 2})
  end
# binding.pry
  it "updates a user's name" do
    RPS::db.update_user_name(2, "Bobby")
    expect(RPS::db.users[2][:name]).to eq("Bobby")
  end


  it "deletes a user" do
    RPS::db.destroy_user(2)
    RPS::db.destroy_user(3)
    RPS::db.destroy_user(4)
    expect(RPS.db.users).to eq({1=>{:name=>"Randy", :id=>1}})
  end

end

describe "db_match" do

  db = RPS::DB.new

  match1 = RPS::db.create_match()
  match2 = RPS::db.create_match()
  match3 = RPS::db.create_match()

  before(:each) do
    @match_id = 0
  end

  it "creates a new match with a unique ID" do
    expect(match1.id).to eq(1)
    expect(match2.id).to eq(2)
    expect(match3.id).to eq(3)
  end

  xit "stores match as a hash" do
    expect(db.matches).to be_a(Hash)
  end

  xit "creates match with default player names" do
    expect(match1.player1).to eq("Player 1")
    expect(match2.player2).to eq("Player 2")
  end

  xit "creates match with a default winner of nil" do
    expect(match1.winner).to eq(nil)
  end

  xit "retrieves match by id" do
    expect(db.matches.retrieve_match(2)).to eq(match2)
  end

  xit "updates match with id" do
    match2.update_match(2, "Bob")
    expect(match2.player1).to eq("Bob")
  end

  xit "destroys match with id" do

  end

end

describe "db_round" do

  before(:each) do
    @game_id = 0
  end

end

describe "invites" do

  before(:each) do
    @invite_id = 0
  end

end


