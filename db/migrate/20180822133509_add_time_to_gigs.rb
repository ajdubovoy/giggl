class AddTimeToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :time, :time
  end
end
