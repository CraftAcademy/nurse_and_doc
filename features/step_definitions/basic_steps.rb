Given("the following registered RSC exist") do |table|
    table.hashes.each do |user|
    FactoryBot.create(:user, user)
    end
end

Given("I am on the landing page") do
    visit root_path  
end

Given("I fill in {string} with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
end

Given("I click on {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  