class Flight < ActiveRecord::Base
  validates_presence_of :nr
  belongs_to :departure_airport, :class_name => "Airport"
  belongs_to :arrival_airport, :class_name => "Airport"
  
  def departure_airport_code
    departure_airport.code unless departure_airport.nil?
  end
end
