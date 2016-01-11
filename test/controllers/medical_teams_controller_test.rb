require 'test_helper'

class MedicalTeamsControllerTest < ActionController::TestCase
  setup do
    @medical_team = medical_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_team" do
    assert_difference('MedicalTeam.count') do
      post :create, medical_team: { es_valido: @medical_team.es_valido }
    end

    assert_redirected_to medical_team_path(assigns(:medical_team))
  end

  test "should show medical_team" do
    get :show, id: @medical_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_team
    assert_response :success
  end

  test "should update medical_team" do
    patch :update, id: @medical_team, medical_team: { es_valido: @medical_team.es_valido }
    assert_redirected_to medical_team_path(assigns(:medical_team))
  end

  test "should destroy medical_team" do
    assert_difference('MedicalTeam.count', -1) do
      delete :destroy, id: @medical_team
    end

    assert_redirected_to medical_teams_path
  end
end
