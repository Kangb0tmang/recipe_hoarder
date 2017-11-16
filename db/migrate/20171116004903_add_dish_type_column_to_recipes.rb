class AddDishTypeColumnToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :dish_type, :string
  end
end
