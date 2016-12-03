class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :barracks, :giphy_id, :url
    rename_column :fighters, :giphy_id, :url
  end
end
