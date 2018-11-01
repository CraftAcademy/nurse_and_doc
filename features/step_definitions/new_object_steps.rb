Given("the following hospitals exists") do |table|
    table.hashes.each do |hospital|
        Hospital.create(hospital)
    end
end