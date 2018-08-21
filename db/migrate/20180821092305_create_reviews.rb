class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :professionalism
      t.integer :quality
      t.integer :turnout
      t.references :send, polymorphic: true
      t.references :receiver, polymorphic: true
      t.references :gig, foreign_key: true

      t.timestamps
    end
  end
end
