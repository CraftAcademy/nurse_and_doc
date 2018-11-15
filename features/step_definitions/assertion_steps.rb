# frozen_string_literal: true

Then('I should be on the landing page') do
  expect(page).to have_current_path(root_path)
end

Then("I should be on the new region page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see {string}') do |content|
  expect(page).to have_content content
end

Then('I should see {string} within the {string} section') do |content, section|
  within(section.to_s) do
    expect(page).to have_content content
  end
end

Then('I should not see {string} within the {string} section') do |content, section|
  within(section.to_s) do
    expect(page).not_to have_content content
  end
end

Then('I should see the message {string}') do |message|
  expect(page).to have_content message
end

Then('I should be on the Staffing companies index') do
  expect(page).to have_current_path(staffcos_path)
end

Then('I should be on the hospital index') do
  expect(page).to have_current_path(hospitals_path)
end

Then('I should be on the jobs index') do
  expect(page).to have_current_path(root_path)
end

Then('I should not see {string}') do |message|
  expect(page).not_to have_content(message)
end

Then('the invited user should belong to the same region as the inviter') do
  new_user = User.last
  expect(new_user.region).to eq @user.region
end

Then('a post request should have been made to {string}') do |url|
  expect(a_request(:post, url)).to have_been_made.times(1)
end

Then('a post request should not have been made to {string}') do |url|
  expect(a_request(:post, url)).not_to have_been_made.times(1)
end
