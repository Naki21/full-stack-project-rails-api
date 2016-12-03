class Fighter < ActiveRecord::Base
  belongs_to :user
  has_many :barracks
  validates :url, :user_id, presence: true

end
