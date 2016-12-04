class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :battles
  has_many :fighters
end
