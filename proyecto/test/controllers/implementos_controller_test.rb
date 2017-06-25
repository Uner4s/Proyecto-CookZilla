require 'test_helper'

class ImplementosControllerTest < ActionController::TestCase
  setup do
    @implemento = implementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:implementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create implemento" do
    assert_difference('Implemento.count') do
      post :create, implemento: { imp_nombre: @implemento.imp_nombre }
    end

    assert_redirected_to implemento_path(assigns(:implemento))
  end

  test "should show implemento" do
    get :show, id: @implemento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @implemento
    assert_response :success
  end

  test "should update implemento" do
    patch :update, id: @implemento, implemento: { imp_nombre: @implemento.imp_nombre }
    assert_redirected_to implemento_path(assigns(:implemento))
  end

  test "should destroy implemento" do
    assert_difference('Implemento.count', -1) do
      delete :destroy, id: @implemento
    end

    assert_redirected_to implementos_path
  end
end
