class DropFoodPlannersTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :food_planners
  end
end
