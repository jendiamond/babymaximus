class CreateBaths < ActiveRecord::Migration[5.0]
  def change
    create_table :baths do |t|
      t.references :day, foreign_key: true
      t.boolean :bath
      t.text :notes

      t.timestamps
    end
  end
end
