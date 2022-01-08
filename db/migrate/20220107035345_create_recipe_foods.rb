class CreateRecipeFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_foods do |t|
      t.integer :quantity
      t.bigint :recipe_id
      t.bigint :food_id
      t.index [:recipe_id], name: 'index_recipe_foods_on_recipe_id'
      t.index [:food_id], name: 'index_recipe_foods_on_food_id'
      t.timestamps
    end
  end
end
