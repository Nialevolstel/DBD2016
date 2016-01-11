require 'test_helper'

class HospitalWardSurgeriesControllerTest < ActionController::TestCase
  setup do
    @hospital_ward_surgery = hospital_ward_surgeries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_ward_surgeries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_ward_surgery" do
    assert_difference('HospitalWardSurgery.count') do
      post :create, hospital_ward_surgery: { fecha_fin: @hospital_ward_surgery.fecha_fin, fecha_inicio: @hospital_ward_surgery.fecha_inicio, hora_fin: @hospital_ward_surgery.hora_fin, hora_inicio: @hospital_ward_surgery.hora_inicio, hospital_ward_id: @hospital_ward_surgery.hospital_ward_id, surgery_id: @hospital_ward_surgery.surgery_id }
    end

    assert_redirected_to hospital_ward_surgery_path(assigns(:hospital_ward_surgery))
  end

  test "should show hospital_ward_surgery" do
    get :show, id: @hospital_ward_surgery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_ward_surgery
    assert_response :success
  end

  test "should update hospital_ward_surgery" do
    patch :update, id: @hospital_ward_surgery, hospital_ward_surgery: { fecha_fin: @hospital_ward_surgery.fecha_fin, fecha_inicio: @hospital_ward_surgery.fecha_inicio, hora_fin: @hospital_ward_surgery.hora_fin, hora_inicio: @hospital_ward_surgery.hora_inicio, hospital_ward_id: @hospital_ward_surgery.hospital_ward_id, surgery_id: @hospital_ward_surgery.surgery_id }
    assert_redirected_to hospital_ward_surgery_path(assigns(:hospital_ward_surgery))
  end

  test "should destroy hospital_ward_surgery" do
    assert_difference('HospitalWardSurgery.count', -1) do
      delete :destroy, id: @hospital_ward_surgery
    end

    assert_redirected_to hospital_ward_surgeries_path
  end
end
