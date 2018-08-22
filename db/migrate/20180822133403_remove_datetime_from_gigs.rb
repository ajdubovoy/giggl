class RemoveDatetimeFromGigs < ActiveRecord::Migration[5.2]
  def change
    remove_column :gigs, :datetime, :datetime
  end
end
