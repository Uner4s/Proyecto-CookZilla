require 'test_helper'

class SearchRecipeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get search_form" do
    get :search_form
    assert_response :success
  end

end
