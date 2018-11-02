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