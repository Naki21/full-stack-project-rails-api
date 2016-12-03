class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :battles, through: :barracks
  has_many :barracks
  has_many :fighters, through: :barracks
end
