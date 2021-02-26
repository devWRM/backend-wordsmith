class Subject < ApplicationRecord

    has_many :words, :dependent => :destroy
    validates :name, presence: true

end
