class AddColumnToBarracks < ActiveRecord::Migration
  def change
    add_column :barracks, :current_fighter, :string
  end
end
