class WordSerializer < ActiveModel::Serializer
  attributes :id, :spelling, :pos, :definition, :sentences, :subject_id
end
