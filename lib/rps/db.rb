class RPS::DB

attr_reader :users, :matches, :games, :invites


  def initialize
    @users = {}
    @user_id = 0
    @matches = {}
    @match_id = 0
    @games = {}
    @game_id = 0
    @invites = {}
    @invite_id = 0
  end


  # CRUD Methods
  #User
  def create_user(data)
    @user_id += 1
    data[:id] = @user_id
    @users[@user_id] = data
    build_user(data)
  end

  def retrieve_user(id)
    @users.select do |user|
      @users[:id] == user[id]
      return @users[id]
    end
  end

  def update_user_name(id, name)
    user = retrieve_user(id)
    user[:name] = name
  end

  def destroy_user(id)
    @users.delete(id)
  end

  def build_user(data)
    RPS::User.new(data)
  end

  #Match
  def create_match
  end

  def retrieve_match
  end

  def update_match
  end

  def destroy_match
  end

  def build_match(data)
    RPS::Match.new(data)
  end

  #Round
  def create_round
  end

  def retrieve_round
  end

  def update_round
  end

  def destroy_round
  end

  def build_round(data)
    RPS::Round.new(data)
  end

  #Invites
  def create_invites
  end

  def retrieve_invites
  end

  def update_invites
  end

  def destroy_invites
  end

  def build_invites
    RPS::Invite.new(data)
  end


  end

  module RPS
    def self.db
      @__db_instance ||= DB.new
    end
  end
