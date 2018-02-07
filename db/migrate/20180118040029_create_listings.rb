class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :meal_type
      t.integer :guest_number
      t.string :meal_allergy
      t.string :address
      t.string :listing_title
      t.text :listing_content
      t.integer :price_perperson
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
