class CreateRecipe < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :preparation_time
      t.integer :cooking_time
      t.boolean :public, default: false
      t.bigint :user_id, null: false
      t.index [:user_id], name: 'index_recipes_on_user_id'
      t.timestamps
    end
  end
end
