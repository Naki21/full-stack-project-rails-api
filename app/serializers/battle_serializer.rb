class BattleSerializer < ActiveModel::Serializer
  attributes :id, :f_val, :u_val, :opponent, :win?, :fighter_id, :user_id, :editable

  def editable
    scope == object.user
  end
end
