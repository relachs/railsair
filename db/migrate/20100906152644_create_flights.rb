class CreateFlights < ActiveRecord::Migration
  def self.up
    create_table :flights do |t|
      t.string :nr
      t.datetime :departure_datetime
      t.datetime :arrival_datetime
      t.integer :departure_airport_id
      t.integer :arrival_airport_id

      t.timestamps
    end
  end

  def self.down
    drop_table :flights
  end
end
