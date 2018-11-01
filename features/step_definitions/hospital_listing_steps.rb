Given("the following hospital exists") do |table|
    table.hashes.each do |hospital|
        Hospital.create(hospital)
    end
end