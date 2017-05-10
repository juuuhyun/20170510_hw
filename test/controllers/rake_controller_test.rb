require 'test_helper'

class RakeControllerTest < ActionController::TestCase
  test "should get db" do
    get :db
    assert_response :success
  end

  test "should get :migrate" do
    get ::migrate
    assert_response :success
  end

end
