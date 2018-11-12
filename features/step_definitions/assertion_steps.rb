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

Then("the invited user should belong to the same region as the inviter") do
    new_user = User.last
    expect(new_user.region).to eq @user.region
end
