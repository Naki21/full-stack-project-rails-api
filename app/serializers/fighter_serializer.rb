class FighterSerializer < ActiveModel::Serializer
  attributes :id, :url, :user_id, :current_fighter, :editable

  def editable
    scope == object.user
  end
end
