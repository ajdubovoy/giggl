class RemoveGigFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :gig, foreign_key: true
  end
end
