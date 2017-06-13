class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :phone
      t.string :information
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
