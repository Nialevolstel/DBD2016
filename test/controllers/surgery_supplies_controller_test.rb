require 'test_helper'

class SurgerySuppliesControllerTest < ActionController::TestCase
  setup do
    @surgery_supply = surgery_supplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgery_supplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgery_supply" do
    assert_difference('SurgerySupply.count') do
      post :create, surgery_supply: { cantidad_utilizada: @surgery_supply.cantidad_utilizada, supply_id: @surgery_supply.supply_id, surgery_id: @surgery_supply.surgery_id }
    end

    assert_redirected_to surgery_supply_path(assigns(:surgery_supply))
  end

  test "should show surgery_supply" do
    get :show, id: @surgery_supply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgery_supply
    assert_response :success
  end

  test "should update surgery_supply" do
    patch :update, id: @surgery_supply, surgery_supply: { cantidad_utilizada: @surgery_supply.cantidad_utilizada, supply_id: @surgery_supply.supply_id, surgery_id: @surgery_supply.surgery_id }
    assert_redirected_to surgery_supply_path(assigns(:surgery_supply))
  end

  test "should destroy surgery_supply" do
    assert_difference('SurgerySupply.count', -1) do
      delete :destroy, id: @surgery_supply
    end

    assert_redirected_to surgery_supplies_path
  end
end
