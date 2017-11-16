class CreateMealPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :meal_plans do |t|
      t.date :day
      t.references :recipe, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
