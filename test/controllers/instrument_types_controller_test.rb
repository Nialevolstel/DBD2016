require 'test_helper'

class InstrumentTypesControllerTest < ActionController::TestCase
  setup do
    @instrument_type = instrument_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instrument_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instrument_type" do
    assert_difference('InstrumentType.count') do
      post :create, instrument_type: { article_clasification_id: @instrument_type.article_clasification_id, descripcion_instrumentaria: @instrument_type.descripcion_instrumentaria, nombre_instrumentaria: @instrument_type.nombre_instrumentaria, precio_por_hora: @instrument_type.precio_por_hora }
    end

    assert_redirected_to instrument_type_path(assigns(:instrument_type))
  end

  test "should show instrument_type" do
    get :show, id: @instrument_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instrument_type
    assert_response :success
  end

  test "should update instrument_type" do
    patch :update, id: @instrument_type, instrument_type: { article_clasification_id: @instrument_type.article_clasification_id, descripcion_instrumentaria: @instrument_type.descripcion_instrumentaria, nombre_instrumentaria: @instrument_type.nombre_instrumentaria, precio_por_hora: @instrument_type.precio_por_hora }
    assert_redirected_to instrument_type_path(assigns(:instrument_type))
  end

  test "should destroy instrument_type" do
    assert_difference('InstrumentType.count', -1) do
      delete :destroy, id: @instrument_type
    end

    assert_redirected_to instrument_types_path
  end
end
