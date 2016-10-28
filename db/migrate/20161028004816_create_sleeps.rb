class CreateSleeps < ActiveRecord::Migration[5.0]
  def change
    create_table :sleeps do |t|
      t.references :day, foreign_key: true
      t.datetime :sleep_start
      t.datetime :sleep_end
      t.text :notes

      t.timestamps
    end
  end
end
