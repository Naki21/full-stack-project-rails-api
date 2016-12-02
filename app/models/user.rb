class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :fighters, through: :barracks
  has_many :fighters
end
