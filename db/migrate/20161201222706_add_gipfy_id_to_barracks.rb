class AddGipfyIdToBarracks < ActiveRecord::Migration
  def change
    add_column :barracks, :giphy_id, :string
  end
end
