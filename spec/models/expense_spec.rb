require 'rails_helper'
require 'ffi'

RSpec.describe Expense, type: :model do
  subject do
    user1 = User.new(name: 'user1')
    group1 = Group.new(author: user1, name: 'group1', icon: 'icon1')
    Expense.new(author: user1, group: group1, name: 'expense1', amount: 100)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'throws an error(Name cant be blank) if the name is not provided' do
    subject.name = nil
    expect { subject.save! }.to raise_error(ActiveModel::StrictValidationFailed)
  end

  it 'throws an error(Amount cant be blank) if the amount is not provided' do
    subject.amount = nil
    expect { subject.save! }.to raise_error(ActiveModel::StrictValidationFailed)
  end
end
