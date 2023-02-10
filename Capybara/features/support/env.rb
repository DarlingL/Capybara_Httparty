require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
  :browser => :chrome,
  :chromeOptions => Selenium::WebDriver::Remote::Capabilities.chrome(
    "goog:chromeOptions" => {"args" => [ "headless", "window-size=1280x720", "disable-gpu" ]})
)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30