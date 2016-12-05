class Fighter < ActiveRecord::Base
  belongs_to :user
  has_many :battles, dependent: :destroy
  validates :url, :user_id, presence: true
  validates :url, uniqueness: true
end
