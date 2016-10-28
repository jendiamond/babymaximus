class CreateTummyTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :tummy_times do |t|
      t.references :day, foreign_key: true
      t.integer :tummy_time
      t.text :notes

      t.timestamps
    end
  end
end
