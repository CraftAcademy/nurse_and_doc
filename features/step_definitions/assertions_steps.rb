When("I click on the link {string}") do |button|
    click_on button
end
  
Then("I should see {string}") do |content|
    expect(page).to have_content content
end
