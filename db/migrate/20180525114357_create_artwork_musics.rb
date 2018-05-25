class CreateArtworkMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :artwork_musics do |t|
      t.references :artwork, foreign_key: true
      t.references :music, foreign_key: true
      t.integer :usage

      t.timestamps
    end
  end
end
