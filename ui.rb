require 'pry'
require 'capybara'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

session = Capybara::Session.new(:selenium)
session.visit "https://localhost:3000" 

binding.pry



