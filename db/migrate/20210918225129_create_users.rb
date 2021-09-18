class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :paterno
      t.string :materno
      t.integer :cellphone
      t.string :profile_picture
      t.string :photo_id
      t.string :about
      t.string :user_type
      t.string :rfc
      t.integer :credit_card
      t.integer :debit_card
      t.string :dropoff_location
      t.date :birthdate
      t.string :google_id
      t.string :status
      t.references :request, null: false, foreign_key: true

      t.timestamps
    end
  end
end
