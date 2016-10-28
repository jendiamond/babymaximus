class CreateFeedings < ActiveRecord::Migration[5.0]
  def change
    create_table :feedings do |t|
      t.references :day, foreign_key: true
      t.datetime :feeding_time
      t.boolean :left
      t.boolean :right
      t.integer :minutes
      t.string :feeding_type
      t.integer :feeding_amount
      t.text :notes

      t.timestamps
    end
  end
end
