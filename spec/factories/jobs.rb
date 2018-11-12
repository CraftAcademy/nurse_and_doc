FactoryBot.define do
  factory :job do 
    profession { "MyString" }
    care_type { "MyString" }
    department { "MyString" }
    license { "MyString" }
    scope { "MyString" }
    working_hours { "MyString" }
    date_start { "MyString" }
    date_finish { "MyString" }
    hospital 
  end
end
