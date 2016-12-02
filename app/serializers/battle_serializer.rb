class BattleSerializer < ActiveModel::Serializer
  attributes :id, :f_val, :u_val, :opponent, :win?
  has_one :barrack
end
