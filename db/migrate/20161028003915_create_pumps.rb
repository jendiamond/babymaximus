class CreatePumps < ActiveRecord::Migration[5.0]
  def change
    create_table :pumps do |t|
      t.references :day, foreign_key: true
      t.datetime :pump_time
      t.integer :pump_amount
      t.text :notes

      t.timestamps
    end
  end
end
