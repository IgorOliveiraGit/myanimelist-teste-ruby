require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.register_driver :chrome_no_image do |app|
  
  options = ::Selenium::WebDriver::Chrome::Options.new
  options.add_preference(:download, prompt_for_download: false, default_directory: '/tmp/downloads')
  options.add_preference(:browser, set_download_behavior: { behavior: 'allow' })
  options.add_argument('--headless')
  options.add_argument('--disable-gpu')
  options.add_argument('--window-size=800,600')
  

  profile = Selenium::WebDriver::Chrome::Profile.new
  profile["profile.default_content_settings"] = { :images => '2' }  
  profile["profile.default_content_settings"] = { :popups => '2' } 

 
  Capybara::Selenium::Driver.new(app, :browser => :chrome, profile: profile, options: options)
end



Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end



Capybara.register_driver :headless_firefox do |app|
    options = ::Selenium::WebDriver::Firefox::Options.new
    profile = ::Selenium::WebDriver::Firefox::Profile.new
    options.headless!
    profile.set_preference("permissions.default.image", 2)
    
  
    Capybara::Selenium::Driver.new app, browser: :firefox, options: options
  end




Capybara.configure do |config|
    config.default_driver = :chrome_no_image
    config.app_host = "https://myanimelist.net/"
end