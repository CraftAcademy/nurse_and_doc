FactoryBot.define do
  factory :region do
    sequence(:name) {|n| "Region #{n}" }
  end
end
