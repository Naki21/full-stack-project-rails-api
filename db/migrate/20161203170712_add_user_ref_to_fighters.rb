class AddUserRefToFighters < ActiveRecord::Migration
  def change
    add_reference :fighters, :user, index: true, foreign_key: true, null: false

  end
end
