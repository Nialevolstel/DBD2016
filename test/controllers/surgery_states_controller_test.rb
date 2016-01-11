require 'test_helper'

class SurgeryStatesControllerTest < ActionController::TestCase
  setup do
    @surgery_state = surgery_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgery_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgery_state" do
    assert_difference('SurgeryState.count') do
      post :create, surgery_state: { nombre_estado: @surgery_state.nombre_estado }
    end

    assert_redirected_to surgery_state_path(assigns(:surgery_state))
  end

  test "should show surgery_state" do
    get :show, id: @surgery_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgery_state
    assert_response :success
  end

  test "should update surgery_state" do
    patch :update, id: @surgery_state, surgery_state: { nombre_estado: @surgery_state.nombre_estado }
    assert_redirected_to surgery_state_path(assigns(:surgery_state))
  end

  test "should destroy surgery_state" do
    assert_difference('SurgeryState.count', -1) do
      delete :destroy, id: @surgery_state
    end

    assert_redirected_to surgery_states_path
  end
end
