class AddColumnToBarracks < ActiveRecord::Migration
  def change
    add_column :barracks, :opponent, :string
  end
end
