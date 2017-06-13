class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :sity
      t.string :street
      t.string :number
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
