# frozen_string_literal: true
class AddColumnToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :current_fighter, :boolean, null: false, default: true
    Fighter.all.each do |p|
      p.update_attribute :current_fighter, false
    end
  end
end
