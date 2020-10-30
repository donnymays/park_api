class ChangeStateColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :parks, :state, :state_name
  end
end
