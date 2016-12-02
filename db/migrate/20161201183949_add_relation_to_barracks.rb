# frozen_string_literal: true
class AddRelationToBarracks < ActiveRecord::Migration
  def change
    add_reference :barracks, :battle, index: true, foreign_key: true
    remove_reference :barracks, :fighter, index: true, foreign_key: true
  end
end
