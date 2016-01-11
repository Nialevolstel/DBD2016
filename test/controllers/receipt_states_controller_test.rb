require 'test_helper'

class ReceiptStatesControllerTest < ActionController::TestCase
  setup do
    @receipt_state = receipt_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receipt_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receipt_state" do
    assert_difference('ReceiptState.count') do
      post :create, receipt_state: { nombre_stado: @receipt_state.nombre_stado }
    end

    assert_redirected_to receipt_state_path(assigns(:receipt_state))
  end

  test "should show receipt_state" do
    get :show, id: @receipt_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receipt_state
    assert_response :success
  end

  test "should update receipt_state" do
    patch :update, id: @receipt_state, receipt_state: { nombre_stado: @receipt_state.nombre_stado }
    assert_redirected_to receipt_state_path(assigns(:receipt_state))
  end

  test "should destroy receipt_state" do
    assert_difference('ReceiptState.count', -1) do
      delete :destroy, id: @receipt_state
    end

    assert_redirected_to receipt_states_path
  end
end
