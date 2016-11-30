class Barrack < ActiveRecord::Base
  belongs_to :user, inverse_of: :barracks
  belongs_to :fighter, inverse_of: :barracks
end
