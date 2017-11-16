class RemoveDishTypeIdFromRecipes < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :dish_type_id, :integer
  end
end
