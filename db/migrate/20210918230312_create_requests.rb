class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :product, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
