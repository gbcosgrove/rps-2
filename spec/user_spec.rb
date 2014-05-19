require 'spec_helper.rb'

describe "user" do
  it "exists" do
    expect(User).to be_a(Class)
  end

  it "initializes with a name" do
    player1 = RPS::User.new("Gary", nil)
    expect(player1.name).to eq("Gary")
  end

end
