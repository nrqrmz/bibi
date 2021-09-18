class CreateBorrowers < ActiveRecord::Migration[6.0]
  def change
    create_table :borrowers do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :paterno
      t.string :materno
      t.string :cellphone
      t.string :profile_picture
      t.string :photo_id
      t.string :rfc
      t.integer :credit_card
      t.string :direccion
      t.date :birthday

      t.timestamps
    end
  end
end
