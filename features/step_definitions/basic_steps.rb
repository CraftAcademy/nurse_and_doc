Then("I should see {string} within the {string} section") do |content, section|
    within("##{section}") {
      expect(page).to have_content content 
    }  
end