require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  # Note that setup must be declared with def. test "setup" do ... will not work if you want to have this method being executed before each method
  def setup
    @flight = Flight.new(valid_flight_attributes)    
  end

  test "should create a flight" do
    assert @flight
  end
  
  test "should require nr" do
    flight = Flight.new(valid_flight_attributes(:nr => nil))
    assert !flight.save
  end
  
  test "departure airport should be an airport" do
    assert_instance_of Airport, @flight.departure_airport
  end
  
  test "code of departure airport should be accessible" do
    assert_equal "DUS", @flight.departure_airport.code
  end
  
  test "code of arrival airport should be accessible" do
    assert_equal "HAM", @flight.arrival_airport.code
  end
end
