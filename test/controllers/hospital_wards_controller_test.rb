require 'test_helper'

class HospitalWardsControllerTest < ActionController::TestCase
  setup do
    @hospital_ward = hospital_wards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_wards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_ward" do
    assert_difference('HospitalWard.count') do
      post :create, hospital_ward: { numero_sala: @hospital_ward.numero_sala }
    end

    assert_redirected_to hospital_ward_path(assigns(:hospital_ward))
  end

  test "should show hospital_ward" do
    get :show, id: @hospital_ward
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_ward
    assert_response :success
  end

  test "should update hospital_ward" do
    patch :update, id: @hospital_ward, hospital_ward: { numero_sala: @hospital_ward.numero_sala }
    assert_redirected_to hospital_ward_path(assigns(:hospital_ward))
  end

  test "should destroy hospital_ward" do
    assert_difference('HospitalWard.count', -1) do
      delete :destroy, id: @hospital_ward
    end

    assert_redirected_to hospital_wards_path
  end
end
