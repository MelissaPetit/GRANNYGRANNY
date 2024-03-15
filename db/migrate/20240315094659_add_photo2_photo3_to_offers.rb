class AddPhoto2Photo3ToOffers < ActiveRecord::Migration[7.1]
  def change
    add_column :offers, :photo2, :string
    add_column :offers, :photo3, :string
  end
end
