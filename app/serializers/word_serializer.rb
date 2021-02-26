class WordSerializer < ActiveModel::Serializer
  attributes :id, :spelling, :pos, :definition, :sentence, :subject_id
end
