require 'test_helper'

class CountryTest < ActiveSupport::TestCase  
  test "should create a country" do
    country = Country.new(:code => "DE", :name => "Germany")
    assert country.save
  end
  
  test "should have 3 fixtures" do
    assert_equal 3, Country.count
  end
  
  test "should have code" do
    country = Country.new(:name => "Germany");
    assert !country.save
  end
  
  test "should have name" do
    country = Country.new(:code => "DE");
    assert !country.save
  end
  
  test "should require 2 characters in code" do
    country = Country.new(:code => "DEU", :name => "Germany")
    assert !country.save
    
    country = Country.new(:code => "D", :name => "Germany")
    assert !country.save
  end
  
  test "should be unique code" do
    country = Country.new(:code => "DE", :name => "Germany")
    assert country.save
    country = Country.new(:code => "DE", :name => "Germany")
    assert !country.save
  end    
end
