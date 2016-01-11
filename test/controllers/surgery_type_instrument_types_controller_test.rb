require 'test_helper'

class SurgeryTypeInstrumentTypesControllerTest < ActionController::TestCase
  setup do
    @surgery_type_instrument_type = surgery_type_instrument_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgery_type_instrument_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgery_type_instrument_type" do
    assert_difference('SurgeryTypeInstrumentType.count') do
      post :create, surgery_type_instrument_type: { instrument_type_id: @surgery_type_instrument_type.instrument_type_id, surgery_type_id: @surgery_type_instrument_type.surgery_type_id }
    end

    assert_redirected_to surgery_type_instrument_type_path(assigns(:surgery_type_instrument_type))
  end

  test "should show surgery_type_instrument_type" do
    get :show, id: @surgery_type_instrument_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgery_type_instrument_type
    assert_response :success
  end

  test "should update surgery_type_instrument_type" do
    patch :update, id: @surgery_type_instrument_type, surgery_type_instrument_type: { instrument_type_id: @surgery_type_instrument_type.instrument_type_id, surgery_type_id: @surgery_type_instrument_type.surgery_type_id }
    assert_redirected_to surgery_type_instrument_type_path(assigns(:surgery_type_instrument_type))
  end

  test "should destroy surgery_type_instrument_type" do
    assert_difference('SurgeryTypeInstrumentType.count', -1) do
      delete :destroy, id: @surgery_type_instrument_type
    end

    assert_redirected_to surgery_type_instrument_types_path
  end
end
