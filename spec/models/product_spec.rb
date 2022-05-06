require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { create :product }

  context 'on creation' do
    it 'should got a name attribute' do
      expect(subject.name).to eq 'Medicament'
    end

    it 'should got a associated category' do
      expect(subject.category.name).to eq 'Birth Control'
    end

    it 'NDC must be only number and hyphens' do
      subject.ndc = 'a'
      expect(subject.save).to be false
      subject.ndc = '.'
      expect(subject.save).to be false
    end

    it 'name cannot be blank' do
      subject.name = nil
      expect(subject.save).to be false
    end
  end
end
