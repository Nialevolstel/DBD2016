require 'test_helper'

class SurgeriesControllerTest < ActionController::TestCase
  setup do
    @surgery = surgeries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgeries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgery" do
    assert_difference('Surgery.count') do
      post :create, surgery: { medical_team_id: @surgery.medical_team_id, patient_id: @surgery.patient_id, surgery_state_id: @surgery.surgery_state_id, surgery_type_id: @surgery.surgery_type_id, user_id: @surgery.user_id }
    end

    assert_redirected_to surgery_path(assigns(:surgery))
  end

  test "should show surgery" do
    get :show, id: @surgery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgery
    assert_response :success
  end

  test "should update surgery" do
    patch :update, id: @surgery, surgery: { medical_team_id: @surgery.medical_team_id, patient_id: @surgery.patient_id, surgery_state_id: @surgery.surgery_state_id, surgery_type_id: @surgery.surgery_type_id, user_id: @surgery.user_id }
    assert_redirected_to surgery_path(assigns(:surgery))
  end

  test "should destroy surgery" do
    assert_difference('Surgery.count', -1) do
      delete :destroy, id: @surgery
    end

    assert_redirected_to surgeries_path
  end
end
