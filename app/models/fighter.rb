class Fighter < ActiveRecord::Base
  belongs_to :user
  has_many :battles
  validates :url, :user_id, presence: true
  validates :url, uniqueness: true
end
