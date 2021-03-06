require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { create :category }

  context 'on creation' do
    it 'should got a name attribute' do
      expect(subject.name).to eq 'Medicament Type'
    end

    it 'name cannot be blank' do
      subject.name = nil
      expect(subject.save).to be false
    end
  end
end
