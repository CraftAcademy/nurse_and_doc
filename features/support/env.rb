# frozen_string_literal: true

require 'coveralls'
require 'email_spec'
require 'email_spec/cucumber'
require 'webmock/cucumber'

Coveralls.wear_merged!('rails')

require 'cucumber/rails'
ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it.'
end

WebMock.disable_net_connect!(allow_localhost: true)
# WebMock.allow_net_connect!

Cucumber::Rails::Database.javascript_strategy = :truncation

Chromedriver.set_version '2.36' unless ENV['CI'] == 'true'

chrome_options = %w[no-sandbox disable-popup-blocking disable-infobars]
chrome_options << 'headless' if ENV['CI'] == 'true'

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: chrome_options
  )
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end

Before do
  @user = FactoryBot.create(:user)
  login_as @user
end

After do
  logout @user
end

Before '@webhook' do 
  WebMock.stub_request(:post, /api.webhook.com/)
  .to_return(body: '', headers: { }, status: 200)
end

Capybara.server = :puma
Capybara.javascript_driver = :chrome

World(FactoryBot::Syntax::Methods)
