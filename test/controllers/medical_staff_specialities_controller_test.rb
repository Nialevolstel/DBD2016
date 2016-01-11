require 'test_helper'

class MedicalStaffSpecialitiesControllerTest < ActionController::TestCase
  setup do
    @medical_staff_speciality = medical_staff_specialities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_staff_specialities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_staff_speciality" do
    assert_difference('MedicalStaffSpeciality.count') do
      post :create, medical_staff_speciality: { medical_staff_id: @medical_staff_speciality.medical_staff_id, speciality_id: @medical_staff_speciality.speciality_id }
    end

    assert_redirected_to medical_staff_speciality_path(assigns(:medical_staff_speciality))
  end

  test "should show medical_staff_speciality" do
    get :show, id: @medical_staff_speciality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_staff_speciality
    assert_response :success
  end

  test "should update medical_staff_speciality" do
    patch :update, id: @medical_staff_speciality, medical_staff_speciality: { medical_staff_id: @medical_staff_speciality.medical_staff_id, speciality_id: @medical_staff_speciality.speciality_id }
    assert_redirected_to medical_staff_speciality_path(assigns(:medical_staff_speciality))
  end

  test "should destroy medical_staff_speciality" do
    assert_difference('MedicalStaffSpeciality.count', -1) do
      delete :destroy, id: @medical_staff_speciality
    end

    assert_redirected_to medical_staff_specialities_path
  end
end
