class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.datetime :datetime
      t.string :address
      t.references :genre, foreign_key: true
      t.boolean :paid
      t.references :organizer, polymorphic: true

      t.timestamps
    end
  end
end
