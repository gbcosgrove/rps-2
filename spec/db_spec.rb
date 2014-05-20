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

  it "retrieves all users" do
    expect(RPS::db.retrieve_users).to be_a(Hash)
  end

# binding.pry

  # it "updates a users name" do
  #   update_user(2, "Bobby")
  #   expect(db.users[2][:name]).to eq("Bobby")
  # end

  it "deletes a user" do
    RPS::db.destroy_user(4)
    expect(player4).to eq(nil)
  end

binding.pry

end

describe "db_match" do

  before(:each) do
    @match_id = 0
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


