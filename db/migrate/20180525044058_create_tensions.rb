class CreateTensions < ActiveRecord::Migration[5.2]
  def change
    create_table :tensions do |t|
      t.string :tension

      t.timestamps
    end
  end
end
