class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :business_name
      t.string :rfc
      t.string :stores_locations
      t.string :contact_number
      t.string :whatsapp
      t.string :fiscal_address
      t.string :business_intro

      t.timestamps
    end
  end
end
