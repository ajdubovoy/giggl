class AddCoordinatesToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :latitude, :float
    add_column :gigs, :longitude, :float
  end
end
