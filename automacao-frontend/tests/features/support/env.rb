require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'

require_relative 'page_objects'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

World(Pages)

ENV_TYPE = ENV['ENV_TYPE']

DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENV_TYPE}.yaml")

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = DATA['url']
end

Capybara.default_max_wait_time = 5

