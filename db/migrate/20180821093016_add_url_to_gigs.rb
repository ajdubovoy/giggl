class AddUrlToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :url, :string
  end
end
