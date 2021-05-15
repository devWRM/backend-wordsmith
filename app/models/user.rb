class User < ApplicationRecord
    has_many :subjects
    has_many :words, through: :subjects
end
