require 'test_helper'

class SurgeryTypesControllerTest < ActionController::TestCase
  setup do
    @surgery_type = surgery_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgery_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgery_type" do
    assert_difference('SurgeryType.count') do
      post :create, surgery_type: { nombre_cirugia: @surgery_type.nombre_cirugia }
    end

    assert_redirected_to surgery_type_path(assigns(:surgery_type))
  end

  test "should show surgery_type" do
    get :show, id: @surgery_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgery_type
    assert_response :success
  end

  test "should update surgery_type" do
    patch :update, id: @surgery_type, surgery_type: { nombre_cirugia: @surgery_type.nombre_cirugia }
    assert_redirected_to surgery_type_path(assigns(:surgery_type))
  end

  test "should destroy surgery_type" do
    assert_difference('SurgeryType.count', -1) do
      delete :destroy, id: @surgery_type
    end

    assert_redirected_to surgery_types_path
  end
end
