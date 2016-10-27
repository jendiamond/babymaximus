class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.integer :week
      t.datetime :date
      t.text :notes

      t.timestamps
    end
  end
end
