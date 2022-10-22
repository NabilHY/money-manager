require 'rails_helper'
require 'ffi'

RSpec.describe Group, type: :model do
  subject do
    user = User.new(name: 'user1')
    Group.new(author: user, name: 'group1', icon: 'icon1')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'throws an error(Name cant be blank) if the name is not provided' do
    subject.name = nil
    expect { subject.save! }.to raise_error(ActiveModel::StrictValidationFailed)
  end
end
