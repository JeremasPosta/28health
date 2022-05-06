FactoryBot.define do
  factory :user do
    full_name { "Keith Richards" }
    email { "keith@stones.com" }
    date_of_birth { "1943-12-18" }
    state_id { (create :state).id }
  end
end
