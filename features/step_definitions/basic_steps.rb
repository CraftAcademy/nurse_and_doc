Given("I click on {string}") do |link|
  click_link link 
end

And("I click on {string} within the {string} section") do |link, section|
  within("#{section}") {
    click_link link
  }
end

Given("I am on the staffing companies page") do
  visit staffcos_index_path
end

Given("I am on the dashboard page") do
  visit root_path
end

Then("I am on the hospital page") do
  visit hospitals_path
end