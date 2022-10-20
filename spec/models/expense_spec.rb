require 'rails_helper'
require 'ffi'

RSpec.describe Expense, type: :model do
  before(:each) do
    @user1 = User.new(name: 'User', email: 'user1@mail.com', password: 'password')
    @group1 = Group.new(author: @user1, name: 'group1', icon: 'icon1')
    @expense1 = Expense.new(author: @user1, group_id: @group1.id, name: 'expense1', amount: 100)
  end

  it 'is valid with valid attributes' do
    expect(@expense1).to be_valid
  end

  it 'not valid without a name' do
    @expense1.name = nil
    expect { @expense1.save! }.to raise_error(ActiveModel::StrictValidationFailed)
  end

  it 'not valid without an amount' do
    @expense1.amount = nil
    expect { @expense1.save! }.to raise_error(ActiveModel::StrictValidationFailed)
  end
end
