class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :name #, :user_id
  has_many :words
end
