Given("the following registered RSC exist") do |table|
    table.hashes.each do |user|
    FactoryBot.create(:user, user)
    end
end

Given("I am on the create RSC page") do
    visit new_user_path
end

Given("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

Given("I click on {string}") do |link|
    click_on link
end
  