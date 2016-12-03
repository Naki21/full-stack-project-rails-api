class FighterSerializer < ActiveModel::Serializer
  attributes :id, :url
  belongs_to :users
end
