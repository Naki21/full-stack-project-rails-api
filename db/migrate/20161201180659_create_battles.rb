class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.integer :f_val
      t.integer :u_val
      t.references :barrack, index: true, foreign_key: true
      t.string :opponent
      t.boolean :win?

      t.timestamps null: false
    end
  end
end
