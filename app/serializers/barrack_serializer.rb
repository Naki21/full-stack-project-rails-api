class BarrackSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :giphy_id
  has_one :user
end
