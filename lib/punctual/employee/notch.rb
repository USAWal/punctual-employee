require 'active_record'

module Punctual
  module Employee

    DATABASE_PATH = File.join File.dirname(__FILE__), '..', '..', '..', 'db'
puts DATABASE_PATH
    ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: File.join(DATABASE_PATH, 'punctual_employee.db')
    ActiveRecord::Migrator.migrate File.join(DATABASE_PATH, 'migrate')

    class Notch < ActiveRecord::Base
    end

  end
end
