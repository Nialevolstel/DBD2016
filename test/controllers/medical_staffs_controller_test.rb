require 'test_helper'

class MedicalStaffsControllerTest < ActionController::TestCase
  setup do
    @medical_staff = medical_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_staff" do
    assert_difference('MedicalStaff.count') do
      post :create, medical_staff: { apellido_materno: @medical_staff.apellido_materno, apellido_paterno: @medical_staff.apellido_paterno, primer_nombre: @medical_staff.primer_nombre, rut_personal_medico: @medical_staff.rut_personal_medico, segundo_nombre: @medical_staff.segundo_nombre, sexo: @medical_staff.sexo, telefono_fijo: @medical_staff.telefono_fijo, telefono_movil: @medical_staff.telefono_movil }
    end

    assert_redirected_to medical_staff_path(assigns(:medical_staff))
  end

  test "should show medical_staff" do
    get :show, id: @medical_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_staff
    assert_response :success
  end

  test "should update medical_staff" do
    patch :update, id: @medical_staff, medical_staff: { apellido_materno: @medical_staff.apellido_materno, apellido_paterno: @medical_staff.apellido_paterno, primer_nombre: @medical_staff.primer_nombre, rut_personal_medico: @medical_staff.rut_personal_medico, segundo_nombre: @medical_staff.segundo_nombre, sexo: @medical_staff.sexo, telefono_fijo: @medical_staff.telefono_fijo, telefono_movil: @medical_staff.telefono_movil }
    assert_redirected_to medical_staff_path(assigns(:medical_staff))
  end

  test "should destroy medical_staff" do
    assert_difference('MedicalStaff.count', -1) do
      delete :destroy, id: @medical_staff
    end

    assert_redirected_to medical_staffs_path
  end
end
