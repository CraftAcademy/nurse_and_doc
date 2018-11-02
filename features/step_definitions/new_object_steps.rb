Given("the following hospitals exists") do |table|
    table.hashes.each do |hospital|
        create(:hospital, hospital)
    end
end