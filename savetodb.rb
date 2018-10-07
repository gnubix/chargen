# save character to database

require 'sqlite3'

db = SQLite3::Database.new":characters"