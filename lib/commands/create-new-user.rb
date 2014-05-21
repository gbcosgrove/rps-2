class RPS::CreateNewUser

  def run(input)

    if input[:name].nil? || (input[:name].length < 1)
      return {:success? => false, :error => "Not a valid entry"}
    end

    user_name = RPS.db.create_user(name: input[:name])


    {
      :success? => true,
      :name => user_name
    }

  end
end
