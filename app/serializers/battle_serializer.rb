class BattleSerializer < ActiveModel::Serializer
  attributes :id, :f_val, :u_val, :my_fighter, :opponent, :win, :fighter_id, :user_id, :editable

  def editable
    scope == object.user
  end
end
