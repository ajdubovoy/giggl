class AddDateToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :date, :date
  end
end
