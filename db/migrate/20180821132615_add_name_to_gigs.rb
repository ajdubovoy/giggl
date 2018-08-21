class AddNameToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :name, :string
  end
end
