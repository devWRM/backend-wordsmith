class User < ApplicationRecord
    has_many :subjects
    has_many :words, through: :subjects

    has_secure_password
    validates :name, :email, uniqueness: true, presence: true
end
