Then("I should see the message {string}") do |message|
    expect(page).to have_content message
  end