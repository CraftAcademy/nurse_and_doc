Then("I should see {string} within the {string} section") do |content, categories|
    within(:css, '#categories') {
      expect(page).to have_content content 
    }  
end