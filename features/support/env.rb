require 'cucumber/rails'
require 'capybara/rspec'
require 'rspec/core'
require 'uri'
require "selenium/webdriver"
require "sauce_whisk"



Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium

Capybara.default_max_wait_time = 50

module Capybara
  class << self
    attr_accessor :session_id, :remote_automation_platform
  end
end

#Before '@javascript' do |scenario|
 #@scenario_name = scenario.feature.name
 # page.driver.browser.manage.window.maximize
 #page.driver.browser.manage.window.resize_to(1360, 960)
#end

# After '@javascript' do |scenario|
#   Capybara.current_driver = browser_name
#   @driver.quit
# end
#test pull request

Capybara.current_driver = :selenium


Before '@javascript' do |scenario|
 @scenario_name = scenario.feature.name
    caps = {
        browser_name: 'chrome',
        platform_name: 'windows 10',
        browser_version: '71.0',
        "goog:chromeOptions" => {w3c: true},
        "sauce:options" => {
            build: 'Onboarding Sample App - Ruby',
            name: '4-best-practices',
            seleniumVersion: '3.141.59',
            username:'salsabiladndra',
            accessKey:'5e69ac73-33dc-445a-a204-3dab049fdfce',
            # tags to filter test reporting.
            #tags: ['instant-sauce', 'ruby-rspec', 'module4'],
            # setting sauce-runner specific parameters such as timeouts helps
            # manage test execution speed.
            maxDuration: 1800,
            commandTimeout: 300,
            idleTimeout: 1000
        }
    }

    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app,browser: :remote,
                                        url: 'https://ondemand.saucelabs.com:443/wd/hub',
                                        desired_capabilities: caps)
    end

  #it "should_open_chrome" do
    #@driver.get('https://www.saucedemo.com')
    #puts "title of webpage is: #{@driver.title}"
  #end
  #after(:each) do |example|
    #SauceWhisk::Jobs.change_status(@driver.session_id, !example.exception)
    #@driver.quit
  #end
end
