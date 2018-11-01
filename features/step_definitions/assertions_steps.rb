When("I click on the link {string}") do |button|
    click_on button
end
  
Then("I should see {string} as a {string} item") do |content, card|
    within(:css, '.card') {       
    expect(page).to have_content content           
    }         
end

Then("I should not see {string} as a {string} item") do |content, card|
    within(:css, '.card') {       
    expect(page).not_to have_content content           
    }
end 
