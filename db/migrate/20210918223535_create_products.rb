class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :user, null: false, foreign_key: true
      t.string :photos
      t.string :product_title
      t.string :category
      t.string :sub_category
      t.string :product_type
      t.integer :product_value
      t.integer :daily_price
      t.integer :weekly_price
      t.integer :monthly_price
      t.string :description
      t.integer :rating
      t.references :reviews, null: false, foreign_key: true

      t.timestamps
    end
  end
end
