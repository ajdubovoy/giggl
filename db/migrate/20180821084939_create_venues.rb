class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :address
      t.string :telephone
      t.string :email
      t.text :description
      t.string :website
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
