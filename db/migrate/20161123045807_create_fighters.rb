class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :image_url

      t.timestamps null: false
    end
  end
end
