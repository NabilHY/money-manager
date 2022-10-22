require 'rails_helper'
require 'ffi'

RSpec.describe User, type: :model do
  subject { User.new(name: 'user1', email: 'user@mail.com', password: 'password') }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'throws an error(Name cant be blank) if the name is not provided' do
    subject.name = nil
    expect { subject.save! }.to raise_error(ActiveModel::StrictValidationFailed)
  end
end
