require 'test_helper'

class BehatsControllerTest < ActionController::TestCase
  setup do
    @behat = behats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:behats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create behat" do
    assert_difference('Behat.count') do
      post :create, behat: { author: @behat.author, category: @behat.category, content: @behat.content, title: @behat.title }
    end

    assert_redirected_to behat_path(assigns(:behat))
  end

  test "should show behat" do
    get :show, id: @behat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @behat
    assert_response :success
  end

  test "should update behat" do
    put :update, id: @behat, behat: { author: @behat.author, category: @behat.category, content: @behat.content, title: @behat.title }
    assert_redirected_to behat_path(assigns(:behat))
  end

  test "should destroy behat" do
    assert_difference('Behat.count', -1) do
      delete :destroy, id: @behat
    end

    assert_redirected_to behats_path
  end
end
