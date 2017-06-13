class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      t.time :arrival_time
      t.time :departure_time
      t.integer :day
      t.references :train, foreign_key: true
      t.references :station, foreign_key: true

      t.timestamps
    end
  end
end
