class AddStationToAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :addresses, :station, foreign_key: true
  end
end
