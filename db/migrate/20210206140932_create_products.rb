class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table "products", force: :cascade do |t|
      t.integer "category_id"
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["category_id"], name: "index_products_on_category_id"
    end
  end
end
