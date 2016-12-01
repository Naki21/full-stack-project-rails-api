class BarrackSerializer < ActiveModel::Serializer
  attributes :id, :u_val, :f_val, :win?, :opponent
  has_one :user
  has_one :fighter
end
