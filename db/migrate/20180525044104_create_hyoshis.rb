class CreateHyoshis < ActiveRecord::Migration[5.2]
  def change
    create_table :hyoshis do |t|
      t.references :music, foreign_key: true
      t.integer :denominator
      t.integer :numerator
      t.integer :bar
      t.float :beat

      t.timestamps
    end
  end
end
