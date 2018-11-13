FactoryBot.define do
  factory :staffco do
    sequence(:name) {|n| "Staffco #{n}" }
    email { "mystring@email.com" }
    contact_name { "MyString" }
    phone { "MyString" }
    webhook { "MyString" }
    region
  end
end
