class AddOtherBandsToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :other_bands, :string
  end
end
