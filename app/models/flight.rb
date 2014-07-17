class Flight < ActiveRecord::Base
  validates_presence_of :nr
  belongs_to :departure_airport, :class_name => "Airport"
  belongs_to :arrival_airport, :class_name => "Airport"
  
  # allows you to call flight.departure_airport_code, which simply passes the :code message
  # on to the :departure_airport.
  delegate :code, :to => :departure_airport, :prefix => true, :allow_nil => true
  
end
