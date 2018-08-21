class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.text :bio
      t.string :website
      t.string :soundcloud
      t.string :spotify
      t.string :bandcamp
      t.string :facebook
      t.string :instagram
      t.string :twitter
      t.string :youtube
      t.string :vimeo

      t.timestamps
    end
  end
end
