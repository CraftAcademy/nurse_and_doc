Given("I click on {string}") do |link|
  click_link link 
end

Given("I click on {string} within the {string} section") do |content, section|
  within("#{section}") {
    expect(page).to have_content content
  }
end

