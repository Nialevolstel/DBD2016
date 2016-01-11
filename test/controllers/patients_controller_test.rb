require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { apellido_materno: @patient.apellido_materno, apellido_paterno: @patient.apellido_paterno, fecha_nacimiento: @patient.fecha_nacimiento, primer_nombre: @patient.primer_nombre, rut_paciente: @patient.rut_paciente, segundo_nombre: @patient.segundo_nombre, sexo: @patient.sexo, telefono_fijo: @patient.telefono_fijo, telefono_movil: @patient.telefono_movil }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { apellido_materno: @patient.apellido_materno, apellido_paterno: @patient.apellido_paterno, fecha_nacimiento: @patient.fecha_nacimiento, primer_nombre: @patient.primer_nombre, rut_paciente: @patient.rut_paciente, segundo_nombre: @patient.segundo_nombre, sexo: @patient.sexo, telefono_fijo: @patient.telefono_fijo, telefono_movil: @patient.telefono_movil }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
