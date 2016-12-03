class BarrackSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :url
  has_one :user
  has_many :battles
end
