Given("the RSC user is logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end

Given("the following hospitals exists") do |table|
    table.hashes.each do |hospital|
        create(:hospital, hospital)
    end
end

Given("the following staffing companies exists") do |table|
    table.hashes.each do |staffco|
        create(:staffco, staffco)
    end
end

Given("the following jobs exist in the database") do |table|
    table.hashes.each do |job|
        create(:job, job)
    end
end

Given("the following registered RSC exist") do |table|
    table.hashes.each do |user|
    FactoryBot.create(:user, user)
    end
end


Given("the user is logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end

Given("the following licenses exists") do |table|
    table.hashes.each do |license|
    FactoryBot.create(:license, license)
    end
end

Given("the following profession exists") do |table|
    table.hashes.each do |profession|
    FactoryBot.create(:profession, profession)
    end
end

Given("the following department exists") do |table|
    table.hashes.each do |department|
    FactoryBot.create(:department, department)
    end
end

Given("the following caretype exists") do |table|
    table.hashes.each do |caretype|
    FactoryBot.create(:care_type, caretype)
    end
end
