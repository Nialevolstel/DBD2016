require 'test_helper'

class MedicalTeamMedicalStaffsControllerTest < ActionController::TestCase
  setup do
    @medical_team_medical_staff = medical_team_medical_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_team_medical_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_team_medical_staff" do
    assert_difference('MedicalTeamMedicalStaff.count') do
      post :create, medical_team_medical_staff: { medical_staff_id: @medical_team_medical_staff.medical_staff_id, medical_team_id: @medical_team_medical_staff.medical_team_id, speciality_id: @medical_team_medical_staff.speciality_id }
    end

    assert_redirected_to medical_team_medical_staff_path(assigns(:medical_team_medical_staff))
  end

  test "should show medical_team_medical_staff" do
    get :show, id: @medical_team_medical_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_team_medical_staff
    assert_response :success
  end

  test "should update medical_team_medical_staff" do
    patch :update, id: @medical_team_medical_staff, medical_team_medical_staff: { medical_staff_id: @medical_team_medical_staff.medical_staff_id, medical_team_id: @medical_team_medical_staff.medical_team_id, speciality_id: @medical_team_medical_staff.speciality_id }
    assert_redirected_to medical_team_medical_staff_path(assigns(:medical_team_medical_staff))
  end

  test "should destroy medical_team_medical_staff" do
    assert_difference('MedicalTeamMedicalStaff.count', -1) do
      delete :destroy, id: @medical_team_medical_staff
    end

    assert_redirected_to medical_team_medical_staffs_path
  end
end
