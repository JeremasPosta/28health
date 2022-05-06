require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create :user }

  context 'on creation' do
    it 'should got a full_name attribute' do
      expect(subject.full_name).to eq 'Keith Richards'
    end

    it 'should got a associated state' do
      expect(subject.state.name).to eq 'Alabama'
    end
    
    it 'name cannot be blank' do
      subject.full_name = nil
      expect(subject.save).to be false
    end
  end
  
  context 'without an state' do
    it 'cannot save' do
      subject.state_id = nil
      expect(subject.save).to be false
    end
  end

  context 'adding products' do
    it 'can add a product' do
      product = create :product
      expect(subject.products << product).to_not be false
      expect(subject.products.first.name).to eq 'Medicament'
    end

    it 'cant add a product twice' do
      product = create :product
      subject.products << product
      expect { subject.products << product }.to raise_error(ActiveRecord::RecordNotUnique)
      expect(subject.products.count).to eq 1
    end

    it 'cant have two product of one category' do
      skip 'Reason: Cannot implement it yet.'
      product = create :product
      other_product = create(
        :product,
        name: 'Other Medicament',
        ndc:'00-00-01',
        category: product.category
        )
      subject.products << product
      expect { subject.products << other_product }.to raise_error(ActiveRecord::RecordNotUnique)
      expect(subject.products.count).to eq 1
    end
  end
end
