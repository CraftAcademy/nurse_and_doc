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

Then("I should be on the Staffing companies index") do
    expect(page).to have_current_path(staffcos_path)
end

Then("I should be on the hospital index") do
    expect(page).to have_current_path(hospitals_path)
end

