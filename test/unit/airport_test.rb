require 'test_helper'

class AirportTest < ActiveSupport::TestCase  
  test "should create an airport" do
    airport = Airport.new(:code => "BER", :name => "Berlin Int. Airport", :country_id => 1)
    assert airport.save
  end
  
  test "should have 3 fixtures" do
    assert_equal 3, Airport.count
  end
  
  test "should have code" do
    airport = Airport.new(:name => "Berlin Int. Airport", :country_id => 1);
    assert !airport.save
  end
  
  test "should have name" do
    airport = Airport.new(:code => "BER", :country_id => 1);
    assert !airport.save
  end
  
  test "should require 3 characters in code" do
    airport = Airport.new(:code => "FRANKF", :name => "Frankfurt Int. Airport", :country_id => 1)
    assert !airport.save
    
    airport = Airport.new(:code => "FR", :name => "Frankfurt Int. Airport", :country_id => 1)
    assert !airport.save
  end
  
  test "should be unique code" do
    airport = Airport.new(:code => "BER", :name => "Berlin Int. Airport", :country_id => 1)
    assert airport.save
    airport = Airport.new(:code => "BER", :name => "Berlin Int. Airport", :country_id => 1)
    assert !airport.save
  end
  
  test "should respond to country" do
    airport = airports :dus
    assert_respond_to airport, :country
  end
  
  test "should get country name" do
    airport = airports :dus
    assert_equal "Japan", airport.country.name
  end
  
  test "should get country name2" do
    airport = Airport.new :code => "TKO", :name => "Tokio Int Airport", :country_id => 3
    airport.save
    assert_equal airports(:dus).country.name, "Japan"
  end
end
