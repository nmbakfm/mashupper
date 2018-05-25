class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.float :beginning_margin_sec

      t.timestamps
    end
  end
end
