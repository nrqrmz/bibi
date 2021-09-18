class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :pickup_location
      t.references :review, null: false, foreign_key: true
      t.integer :price_per_day
      t.integer :total_amount

      t.timestamps
    end
  end
end
