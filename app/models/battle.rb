# frozen_string_literal: true
include Giphy
class Battle < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  def initialize(battle_params)
    super
    self.my_fighter = Fighter.find(fighter_id).url
    self.opponent = Giphy.random.image_url
    self.u_val = rand(100)
    self.f_val = rand(100)
    self.win = if u_val >= f_val
                 true
               else
                 false
                end
  end
end
