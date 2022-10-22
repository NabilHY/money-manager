class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :expenses

  def sum
    amount = 0
    expenses.each do |expense|
      amount += expense.amount
    end
    amount.to_i
  end

  validates :name, presence: { strict: true }
  validates :icon, presence: { strict: true }
end
