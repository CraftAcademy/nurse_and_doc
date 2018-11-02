Given("the RSC user is logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end

Given("the following hospitals exists") do |table|
    table.hashes.each do |hospital|
        create(:hospital, hospital)
    end
end