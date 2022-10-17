class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :group

  validates :name, presence: { strict: true }
  validates :amount, presence: { strict: true }

end
