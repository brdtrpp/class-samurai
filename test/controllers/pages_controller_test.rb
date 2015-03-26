require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get schedule" do
    get :schedule
    assert_response :success
  end

  test "should get stripe" do
    get :stripe
    assert_response :success
  end

  test "should get attendance" do
    get :attendance
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get locations" do
    get :locations
    assert_response :success
  end

  test "should get forms" do
    get :forms
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
