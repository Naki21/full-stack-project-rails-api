class Fighter < ActiveRecord::Base
  has_many :users, through: :barracks
  has_many :users
end
