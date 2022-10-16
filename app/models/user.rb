class User < ApplicationRecord
    has_many :groups
    has_many :expenses 

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: { minimum: 3 }
end
