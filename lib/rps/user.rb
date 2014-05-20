class RPS::User

attr_reader :name, :id

  def initialize(args)
    @name = args[:name]
    @id = args[:id]
  end

end

