class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :giphy_id

      t.timestamps null: false
    end
  end
end
