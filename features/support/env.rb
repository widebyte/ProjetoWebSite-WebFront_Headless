require 'awesome_print'
require "capybara"
require "capybara/cucumber"
require "faker"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome_headless
    config.app_host = "http://automationpractice.com/index.php"
    config.default_max_wait_time = 10
end

