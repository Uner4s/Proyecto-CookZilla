require 'test_helper'

class IngredientesControllerTest < ActionController::TestCase
  setup do
    @ingrediente = ingredientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingrediente" do
    assert_difference('Ingrediente.count') do
      post :create, ingrediente: { ing_nombre: @ingrediente.ing_nombre }
    end

    assert_redirected_to ingrediente_path(assigns(:ingrediente))
  end

  test "should show ingrediente" do
    get :show, id: @ingrediente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingrediente
    assert_response :success
  end

  test "should update ingrediente" do
    patch :update, id: @ingrediente, ingrediente: { ing_nombre: @ingrediente.ing_nombre }
    assert_redirected_to ingrediente_path(assigns(:ingrediente))
  end

  test "should destroy ingrediente" do
    assert_difference('Ingrediente.count', -1) do
      delete :destroy, id: @ingrediente
    end

    assert_redirected_to ingredientes_path
  end
end
