require("rspec")
require("pg")
require("pry")
require("list")
require("task")
require("capybara")

DB = PG.connect({:dbname => "to_do"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM lists *;")
    DB.exec("DELETE FROM tasks *;")
  end
end
