class AddColumnsToBarracks < ActiveRecord::Migration
  def change
    add_column :barracks, :u_val, :integer
    add_column :barracks, :f_val, :integer
    add_column :barracks, :win?, :boolean
  end
end
