class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :family_name
      t.string :first_name

      t.timestamps
    end
  end
end
