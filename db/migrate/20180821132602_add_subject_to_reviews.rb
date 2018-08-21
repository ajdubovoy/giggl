class AddSubjectToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :subject, :string
  end
end
