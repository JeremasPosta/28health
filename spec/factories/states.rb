FactoryBot.define do
  factory :state do
    name { 'Alabama' }
    abbreviation { 'AL' }
    service_offered { false }
    min_age { 1 }
  end
end
