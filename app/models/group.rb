class Group < ApplicationRecord
  belongs_to :user
  validates :name, prensence: true
  validates :name, length: { minumum: 3 }
  validates :name, uniqueness: true
  validates :icon, presence: true
end
