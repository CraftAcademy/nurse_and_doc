FactoryBot.define do
  factory :job do 
    sequence(:profession) {|n| "Job #{n}" }
    care_type { "MyString" }
    department { "MyString" }
    license { "MyString" }
    scope { "MyString" }
    working_hours { "MyString" }
    date_start { "MyString" }
    date_finish { "MyString" }
    requirements { "MyText" }
    other_requirements { "MyString" }
    description { "MyText" }
    years_experience { 7 }
    application_deadline { "20202020" }
    accomodation_arrangement { true }
    accomodation_budget { "MyString" }
    accomodation_comment { "MyText" }
    travel_arranged { true }
    travel_budget { "MyString" }
    travel_comment { "MyText" }
    other_pay { true }
    other_budget { "MyString" }
    other_comment { "MyText" }
    reference_number { "MyString" }
    hospital
    region
  end
end
