# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160802043832) do

  create_table "chocolates", force: :cascade do |t|
    t.string   "chocolatename"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dairies", force: :cascade do |t|
    t.string   "dairyname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "link_recipe_ings", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "chocolate_id"
    t.integer  "dairy_id"
    t.integer  "puree_id"
    t.integer  "liqueur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "link_recipe_ings", ["chocolate_id"], name: "index_link_recipe_ings_on_chocolate_id"
  add_index "link_recipe_ings", ["dairy_id"], name: "index_link_recipe_ings_on_dairy_id"
  add_index "link_recipe_ings", ["liqueur_id"], name: "index_link_recipe_ings_on_liqueur_id"
  add_index "link_recipe_ings", ["puree_id"], name: "index_link_recipe_ings_on_puree_id"
  add_index "link_recipe_ings", ["recipe_id"], name: "index_link_recipe_ings_on_recipe_id"

  create_table "liqueurs", force: :cascade do |t|
    t.string   "liquorname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "other_ingredients", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "recipe_id"
  end

  create_table "purees", force: :cascade do |t|
    t.string   "pureename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
