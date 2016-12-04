class AddColumnToBattles < ActiveRecord::Migration
  def change
    add_column :battles, :my_fighter, :string
  end
end
