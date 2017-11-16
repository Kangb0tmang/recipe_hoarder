class DropDishTypesTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :dish_types
  end
end
