require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    "goog:chromeOptions" => {"args" => [ "headless", "window-size=1280x720", "disable-gpu" ]})

Capybara.default_driver = :selenium, desired_capabilities: caps
Capybara.default_max_wait_time = 30