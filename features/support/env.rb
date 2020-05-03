require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.register_driver :firefox_headless do |app|
    options = ::Selenium::WebDriver::Firefox::Options.new
    options.args << '--headless'
  
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: options)
  end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = "https://myanimelist.net/"
end