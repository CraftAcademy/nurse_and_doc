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