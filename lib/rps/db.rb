class RPS::DB

def initialize
end


# CRUD Methods
#User
def create_user
end

def retrieve_user
end

def update_user
end

def destroy_user
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

#Round
def create_round
end

def retrieve_round
end

def update_round
end

def destroy_round
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


end

module RPS
  def self.db
    @__db_instance ||= DB.new
  end
end
