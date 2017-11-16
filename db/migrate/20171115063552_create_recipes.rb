class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.text :instructions
      t.text :notes
      t.text :description
      t.text :image_url
      t.string :yield
      t.string :source
      t.text :source_url
      t.boolean :favourite

      t.timestamps
    end
  end
end
