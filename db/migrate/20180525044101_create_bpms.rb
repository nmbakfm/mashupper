class CreateBpms < ActiveRecord::Migration[5.2]
  def change
    create_table :bpms do |t|
      t.references :music, foreign_key: true
      t.float :bpm
      t.integer :bar
      t.float :beat

      t.timestamps
    end
  end
end
