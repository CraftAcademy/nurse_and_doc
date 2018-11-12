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

Then("I fill in the job form with {string} information") do |content|
    case content
    when 'valid'
        profession = 'Doctor'
        license = 'Kirurgi'
        scope = 'Part Time'
    when 'invalid'
        profession = ''
        license = ''
        scope = ''
    end

    select profession, from: 'Profession'
    select 'stockholm sjukhuset', from: 'Hospital'
    select 'Surgery', from: 'Department'
    select license, from: 'License'
    select 'Homecare', from: 'Care type'
    select scope, from: 'Scope'
    fill_in 'Requirements', with: 'Experienced, dedicated and leadership skills.'
    select 'Drivers License', from: 'Other requirements'
    fill_in 'Description', with: 'Looking for Doctor with a lot of experience.'
    find(:css, "#job_accomodation_arrangement[value='1']").set(true)
    fill_in 'Accomodation budget', with: '1000kr per week'
    fill_in 'Accomodation comment', with: 'If you are in a hotel'
    find(:css, "#job_travel_arranged[value='1']").set(true)
    fill_in 'Travel budget', with: '500kr a week'
    fill_in 'Travel comment', with: 'If you are using a car'
    find(:css, "#job_other_pay[value='1']").set(true)
    fill_in 'Other budget', with: '100 - 1000kr'
    fill_in 'Other comment', with: 'We will subsidize parking fees'
    fill_in 'Reference number', with: '2000-10-20-3040'
    select '8', from: 'Years experience'
    select 'Weekend', from: 'Working hours'
    fill_in 'Date start', with: '0202020'
    fill_in 'Date finish', with: '1202021'
    fill_in 'Application deadline', with: '01012019'
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

<<<<<<< HEAD
Then("I confirm popup") do
    page.driver.browser.switch_to.alert.accept
end
=======
Then("the invited user should belong to the same region as the inviter") do
    new_user = User.last
    expect(new_user.region).to eq @user.region
end
>>>>>>> 43ed0f6be49fd7d96c551cd2a66e5f294df26820
