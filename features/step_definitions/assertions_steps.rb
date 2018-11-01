When("I click on the link {string}") do |button|
    click_on button
end
  
Then("I should see {string} as a/an {string}") do |content, listitem|
    within(:css, '#listitem') {       
    expect(page).to have_content content           
    }         
end

Then("I should not see {string} as a/an {string}") do |content, listitem|
    within(:css, '#listitem') {       
    expect(page).not_to have_content content           
    }
end 
