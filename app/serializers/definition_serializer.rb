class DefinitionSerializer < ActiveModel::Serializer
  attributes :id, :part_of_speech, :definition_text, :sentence
  has_one :word
  has_one :user
end
