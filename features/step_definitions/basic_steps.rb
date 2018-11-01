Then("I should see {string} within the {string} section") do |content, section|
    within(:css, '#sidebar') {
      expect(page).to have_content content 
    }  
end