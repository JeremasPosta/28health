require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { create :product }

  context 'on creation' do
    it 'must be true' do
      expect(subject).to_not be nil
    end

    it 'should got a name attribute' do
      expect(subject.name).to eq 'Medicament'
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
