class WordSerializer < ActiveModel::Serializer
  attributes :id, :word
  has_many :definitions
end
