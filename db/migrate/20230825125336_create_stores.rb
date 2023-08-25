class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :domain
      t.string :purchasing_url
      t.integer :price
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
