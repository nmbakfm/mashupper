class CreateChords < ActiveRecord::Migration[5.2]
  def change
    create_table :chords do |t|
      t.references :music, foreign_key: true
      t.string :chord_name
      t.string :primary_category
      t.string :root
      t.integer :bar
      t.float :beat
      t.integer :harmony_func

      t.timestamps
    end
  end
end
