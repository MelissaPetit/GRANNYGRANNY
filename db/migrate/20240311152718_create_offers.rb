class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.date :start_from
      t.float :price_per_participant
      t.string :photo_url
      t.integer :capacity
      t.float :duration
      t.string :address
      t.string :category

      t.timestamps
    end
  end
end
