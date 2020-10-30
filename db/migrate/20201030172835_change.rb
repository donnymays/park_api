class Change < ActiveRecord::Migration[5.2]
  def change
    rename_column :parks, :type_name, :park_type
  end
end
