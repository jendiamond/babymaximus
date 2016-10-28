class CreateDiapers < ActiveRecord::Migration[5.0]
  def change
    create_table :diapers do |t|
      t.references :day, foreign_key: true
      t.string :diaper_type
      t.text :notes

      t.timestamps
    end
  end
end
