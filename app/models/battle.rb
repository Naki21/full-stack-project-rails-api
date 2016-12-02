# frozen_string_literal: true
include Giphy
class Battle < ActiveRecord::Base
  has_many :users, through: :barracks
  belongs_to :barracks
  def initialize(battle_params)
    super
    self.opponent = Giphy.random.id
    self.u_val = rand(100)
    self.f_val = rand(100)
  end
end
