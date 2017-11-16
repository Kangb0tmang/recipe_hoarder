# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171116010012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meal_plans", force: :cascade do |t|
    t.date "day"
    t.bigint "recipe_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_meal_plans_on_recipe_id"
    t.index ["user_id"], name: "index_meal_plans_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.text "ingredients"
    t.text "instructions"
    t.text "notes"
    t.text "description"
    t.text "image_url"
    t.string "yield"
    t.string "source"
    t.text "source_url"
    t.boolean "favourite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "dish_type"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "user_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_taggings_on_recipe_id"
    t.index ["user_tag_id"], name: "index_taggings_on_user_tag_id"
  end

  create_table "user_tags", force: :cascade do |t|
    t.string "tag_name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "email"
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "meal_plans", "recipes"
  add_foreign_key "meal_plans", "users"
  add_foreign_key "recipes", "users"
  add_foreign_key "taggings", "recipes"
  add_foreign_key "taggings", "user_tags"
  add_foreign_key "user_tags", "users"
end
