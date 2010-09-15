require 'test_helper'

class FlightsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flight" do
    assert_difference('Flight.count') do
      post :create, :flight => valid_flight_attributes
    end

    assert_redirected_to flight_path(assigns(:flight))
  end

  test "should show flight" do
    get :show, :id => flights(:dus_ham).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => flights(:dus_ham).to_param
    assert_response :success
  end

  test "should update flight" do
    put :update, :id => flights(:dus_ham).to_param, :flight => { }
    assert_redirected_to flight_path(assigns(:flight))
  end

  test "should destroy flight" do
    assert_difference('Flight.count', -1) do
      delete :destroy, :id => flights(:dus_ham).to_param
    end

    assert_redirected_to flights_path
  end
  
  test "should show airport names in index" do
    get :index
    assert_select 'td', 'DUS'
    assert_select 'td', 'HAM'    
  end
  
  test "should show a german date in index" do
    get :index
    assert_select 'td', '06.09.2010 17:00' # 2010-09-06 17:00
  end
end