class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.references :music, foreign_key: true
      t.integer :bar
      t.float :beat

      t.timestamps
    end
  end
end
