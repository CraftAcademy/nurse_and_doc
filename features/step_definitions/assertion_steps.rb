Then("I should be on the landing page") do
    expect(page).to have_current_path(root_path)
end  

Then("I should see {string}") do |content|
    expect(page).to have_content content
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

Then("I should see the message {string}") do |message|
    expect(page).to have_content message
end

Then("I should be on the Staffing companies index") do
    expect(page).to have_current_path(staffcos_path)
end

Then("I should be on the hospital index") do
    expect(page).to have_current_path(hospitals_path)
end

Then("I should be on the jobs index") do
    expect(page).to have_current_path(root_path)
end

Then("I should not see {string}") do |message|
    expect(page).not_to have_content(message)
end

When("I fill in job form") do
    fill_in 'Name', with: 'Heart Surgeon'
    fill_in 'Profession', with: 'doctor'
    fill_in 'Hospital', with: 'stockholm sjukhuset'
    fill_in 'Department', with: 'Surgery'
    fill_in 'License', with: 'Work'
    fill_in 'Caretype', with: 'Elderly'
    fill_in 'Scope', with: 'Scope'
    fill_in 'Working hours', with: '9 hours'
    fill_in 'Date start', with: 'Tomorrow'
    fill_in 'Date finish', with: 'Next Year'
end

When("I fill in company form with {string} information") do |email|
    case email
    when 'valid'
        email = 'email@email.com' 
    when 'invalid'
        email = 'company1@me.com'
    end
    fill_in 'Name', with: 'DocsRus'
    fill_in 'Contact name', with: 'Angelica'
    fill_in "Phone", with: "01234567"
    fill_in "Webhook", with: "https://api.webhook.com/v2/company3.json?"
    fill_in "Email", with: email
end