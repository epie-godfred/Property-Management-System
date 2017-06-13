class CreateTrains < ActiveRecord::Migration[5.1]
  def change
    create_table :trains do |t|
      t.string :name
      t.string :number
      t.integer :wagon_count

      t.timestamps
    end
  end
end
