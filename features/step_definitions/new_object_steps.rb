Given("the RSC user is logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end

Given("the following hospitals exists") do |table|
    table.hashes.each do |hospital_hash|
        region = Region.find_or_create_by(name: hospital_hash[:region])
        hospital_hash.except!("region")
        create(:hospital, hospital_hash.merge(region: region))
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

Given("the following regions exist") do |table|
    table.hashes.each do |region|
    create(:region, region)   
    end 
end

Given("the following registered RSC exist") do |table|
    table.hashes.each do |user_hash|
        region = Region.find_by(name: user_hash[:region])
        user_hash.except!("region")
        create(:user, user_hash.merge(region: region))
    end
end

Given("the user is logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end

Given("the following licenses exists") do |table|
    table.hashes.each do |license|
        create(:license, license)
    end
end

Given("the following profession exists") do |table|
    table.hashes.each do |profession|
        create(:profession, profession)
    end
end

Given("the following department exists") do |table|
    table.hashes.each do |department|
        create(:department, department)
    end
end

Given("the following caretype exists") do |table|
    table.hashes.each do |caretype|
        create(:care_type, caretype)
    end
end

