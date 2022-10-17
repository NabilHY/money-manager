class User < ApplicationRecord
    has_many :groups
    has_many :expenses 

    validates :name, presence: { strict: true }

end
