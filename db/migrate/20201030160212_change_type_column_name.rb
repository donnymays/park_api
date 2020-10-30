class ChangeTypeColumnName < ActiveRecord::Migration[5.2]
  def change
      rename_column :parks, :type, :type_name
  end
end
