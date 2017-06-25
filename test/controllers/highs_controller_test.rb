require 'test_helper'

class HighsControllerTest < ActionController::TestCase
  setup do
    @high = highs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:highs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create high" do
    assert_difference('High.count') do
      post :create, high: { score: @high.score }
    end

    assert_redirected_to high_path(assigns(:high))
  end

  test "should show high" do
    get :show, id: @high
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @high
    assert_response :success
  end

  test "should update high" do
    patch :update, id: @high, high: { score: @high.score }
    assert_redirected_to high_path(assigns(:high))
  end

  test "should destroy high" do
    assert_difference('High.count', -1) do
      delete :destroy, id: @high
    end

    assert_redirected_to highs_path
  end
end
