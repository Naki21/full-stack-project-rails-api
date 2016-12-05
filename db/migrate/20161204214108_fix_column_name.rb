class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :battles, :win?, :win

  end
end
