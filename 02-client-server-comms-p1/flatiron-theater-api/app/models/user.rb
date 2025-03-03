class User < ApplicationRecord
    has_many :tickets
    has_many :productions, through: :tickets
    validates :email, uniqueness: true
end
