class Subject < ApplicationRecord

    has_many :words, :dependent => :destroy
    validates :name, presence: true

    def word_check(word)
        return self.words.include?(word)
    end


end
