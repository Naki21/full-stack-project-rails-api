class FighterSerializer < ActiveModel::Serializer
  attributes :id, :url, :user_id, :editable

  def editable
    scope == object.user
  end
end
