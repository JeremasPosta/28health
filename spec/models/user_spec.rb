require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create :user }

  context 'on creation' do
    it 'must exist' do
      expect(subject).to_not be false
    end

    it 'should got a full_name attribute' do
      expect(subject.full_name).to eq 'Keith Richards'
    end

    it 'should got a associated state' do
      expect(State.find_by_id(subject.state_id).name).to eq 'Alabama'
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
end
