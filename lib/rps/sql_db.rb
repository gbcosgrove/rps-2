require 'sqlite 3'
require 'pry-debugger'

class RPS::SQLDB
  attr_reader :db

  def initialize
    @db = SQLit3::Database.new "rps.db"

    @db.execute <<-SQL
    CREATE TABLE IF NOT EXISTS users(
      id INTEGER,
      content string,
      PRIMARY KEY ( id )
      );
    SQL

  end




end
