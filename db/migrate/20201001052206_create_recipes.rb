class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.references :user,  null: false,foreign_key: true
      t.string :dish_name, null: false
      t.integer :genre_id, null: false
      t.text :ingredient,  null: false
      t.text :detail,      null: false
      t.timestamps
    end
  end
end
