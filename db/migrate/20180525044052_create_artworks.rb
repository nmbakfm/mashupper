class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.references :user, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
