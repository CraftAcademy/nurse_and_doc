Given("I am on the dashboard page") do
    visit root_path
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I click the {string} link") do |link|
    click_link link
end

When("I click on the link {string}") do |button|
    click_on button
end

Then("I should see {string} within the {string} section") do |content, section|
    within("#{section}") {
      expect(page).to have_content content
    }
end

 Then("I should not see {string} within the {string} section") do |content, section|
    within("#{section}") {
      expect(page).not_to have_content content
    }
end