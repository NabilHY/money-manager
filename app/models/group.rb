class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :expenses

  validates :name, presence: { strict: true }
  validates :icon, presence: { strict: true }

end
