class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :fighters, :giphy_id, :url
  end
end
