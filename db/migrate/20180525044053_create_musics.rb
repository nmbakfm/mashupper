class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.references :mashup, foreign_key: true
      t.string :title
      t.integer :usage
      t.float :beginning_margin_sec

      t.timestamps
    end
  end
end
