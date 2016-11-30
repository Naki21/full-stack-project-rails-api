class BarrackSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :fighter
end
