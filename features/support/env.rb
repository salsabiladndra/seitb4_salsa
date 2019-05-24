require 'cucumber/rails'
require 'capybara/rspec'
require 'rspec/core'
require 'uri'
require "selenium/webdriver"

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium_chrome
Capybara.javascript_driver = :selenium_chrome

Capybara.default_max_wait_time = 50

module Capybara
  class << self
    attr_accessor :session_id, :remote_automation_platform
  end
end

Before '@javascript' do |scenario|
 @scenario_name = scenario.feature.name
 # page.driver.browser.manage.window.maximize
 page.driver.browser.manage.window.resize_to(1360, 960)
end

# After '@javascript' do |scenario|
#   Capybara.current_driver = browser_name
#   @driver.quit
# end

Capybara.current_driver = :selenium_chrome
