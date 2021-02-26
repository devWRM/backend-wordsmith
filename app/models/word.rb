class Word < ApplicationRecord

    belongs_to :subject
    validates :spelling, :pos, :definition, :sentences, presence: true


end
