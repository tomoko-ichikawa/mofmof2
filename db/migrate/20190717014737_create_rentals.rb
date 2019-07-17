class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
        t.string :property
        t.integer :rent
        t.string :address
        t.integer :age
        t.text :remarks
        t.string :route_a
        t.string :station_a
        t.integer :minutes_a
        t.string :route_b
        t.string :station_b
        t.integer :minutes_b
        t.timestamps
    end
  end
end
