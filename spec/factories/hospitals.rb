FactoryBot.define do
  factory :hospital do
    sequence(:name) {|n| "Hospital #{n}" }
    region
  end
end
