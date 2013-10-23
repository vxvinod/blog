require 'test_helper'

class OpensrcControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get content" do
    get :content
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
