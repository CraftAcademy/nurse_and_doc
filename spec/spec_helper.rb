require "action_mailer"
require "email_spec"
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
  end

  config.include EmailSpec::Helpers
  config.include EmailSpec::Matchers

  config.before(:each) do
    reset_mailer
  end
end
