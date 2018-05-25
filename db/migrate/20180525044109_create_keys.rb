class CreateKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :keys do |t|
      t.references :music
      t.string :tonica
      t.integer :key
      t.integer :bar
      t.float :beat

      t.timestamps
    end
  end
end
