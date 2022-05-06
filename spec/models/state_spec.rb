require 'rails_helper'

RSpec.describe State, type: :model do
  subject { create :state }

  context 'on creation' do
    it 'should got a name attribute' do
      expect(subject.name).to eq 'Alabama'
    end

    it 'name cannot be blank' do
      subject.name = nil
      expect(subject.save).to be false
    end
  end
  
  context 'without min_age' do
    it 'cannot save' do
      subject.min_age = nil
      expect(subject.save).to be false
    end
  end
end
