class RemoveRefFromBattles < ActiveRecord::Migration
  def change
    add_reference :battles, :fighter, index: true, foreign_key: true
    add_reference :battles, :user, index: true, foreign_key: true

  end
end
