Given("I am on the create RSC page") do
    visit new_user_path
end

Then("I am on the landing page") do
  visit root_path
end

Then("I am on the hospital page") do
  visit hospitals_path
end

Given("I am on the staffing companies page") do
  visit staffcos_path
end

Given("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("I click on {string}") do |link|
  click_on link
end

And("I click on {string} within the {string} section") do |link, section|
  within("#{section}") {
    click_link link
  }
end

Given("I am on the login page") do
  visit user_session_path
end

Given("stop") do
  binding.pry
end

Then("I select a region option") do
  select "stockholm", from: "Region"
end

Given("I wait {int} second(s)") do |int|
  sleep int
end

Then("I confirm popup") do
  page.driver.browser.switch_to.alert.accept
end
