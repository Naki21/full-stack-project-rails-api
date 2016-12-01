# frozen_string_literal: true
include Giphy
class Barrack < ActiveRecord::Base
  belongs_to :user, inverse_of: :barracks
  belongs_to :fighter, inverse_of: :barracks
  def initialize(barrack_params)
    super
    self.opponent = Giphy.random.id
    self.u_val = rand(100)
    self.f_val = rand(100)
  end
end
