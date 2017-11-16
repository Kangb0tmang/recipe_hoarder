class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.references :recipe, foreign_key: true
      t.references :user_tag, foreign_key: true

      t.timestamps
    end
  end
end
