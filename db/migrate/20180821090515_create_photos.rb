class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :profile, polymorphic: true

      t.timestamps
    end
  end
end
