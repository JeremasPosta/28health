FactoryBot.define do
  factory :product do
    name { 'Medicament' }
    category { create :category, name: 'Birth Control' }
    ndc { '00000-00-001' }
    qty { 12 }
    price { 120 }
    instructions { 'Easy peasy lemon squeezy.' }
  end
end
