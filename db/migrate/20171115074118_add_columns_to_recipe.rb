class AddColumnsToRecipe < ActiveRecord::Migration[5.1]
  def change
    add_reference :recipes, :dish_type, foreign_key: true
    add_reference :recipes, :user, foreign_key: true
  end
end
