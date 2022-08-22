class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :media
      t.string :niche
      t.integer :reach
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
