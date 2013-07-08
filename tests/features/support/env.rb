
require "selenium-webdriver"
require "capybara/cucumber"
require "rspec/expectations"
require "capybara/poltergeist"

Capybara.default_driver = :selenium


Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, {debug: false})
end

Capybara.javascript_driver = :poltergeist

Capybara.app_host = "127.0.0.1"
