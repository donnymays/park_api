class AddParksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :type
      t.string :description
      t.string :state
      t.string :amenities
      t.integer :entrance_fee
    end
  end
end
