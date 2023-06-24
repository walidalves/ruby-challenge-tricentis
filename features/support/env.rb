require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'faker'
require 'httparty'
require 'pry'
require 'rake'

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :site_prism
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 10
    config.app_host = 'http://sampleapp.tricentis.com'
end
